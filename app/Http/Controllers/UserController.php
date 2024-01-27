<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Department;
use App\Models\Designation;
use App\Models\Attendance;
use App\Models\LeaveType;
use App\Models\LeaveBalance;
use Spatie\Permission\Models\Role;
use DB;
use Hash;
use Carbon\Carbon;
use Illuminate\Support\Arr;

class UserController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:user-list|user-create|user-edit|user-delete', ['only' => ['index','store']]);
        $this->middleware('permission:user-create', ['only' => ['create','store']]);
        $this->middleware('permission:user-edit', ['only' => ['edit','update']]);
        $this->middleware('permission:user-delete', ['only' => ['destroy']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $user = auth()->user();

        if ($user->hasRole('admin')) {

            $data = User::with('designation','department')->orderBy('id', 'DESC')->get();
        } elseif ($user->hasRole('manager')) {

            $data = User::with('designation','department')->where('manager_id', $user->id)
                ->orWhere('id', $user->id)
                ->orderBy('id', 'DESC')
                ->get();
        } elseif ($user->hasRole('teamlead')) {

            $data = User::with('designation','department')->where('teamlead_id', $user->id)
                ->orWhere('id', $user->id)
                ->orderBy('id', 'DESC')
                ->get();
        } else {
            $data = User::with('designation','department')->where('id', $user->id)->orderBy('id', 'DESC')->get();
        }

        return view('users.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles = Role::pluck('name', 'name')->all();
        $managersAndTeamLeads = User::role(['manager'])->pluck('name', 'id')->toArray();
        $teamLeads = User::role(['teamlead'])->pluck('name', 'id')->toArray();
        $departments = Department::pluck('name', 'id');
        $designations = Designation::pluck('name', 'id');
        return view('users.create', compact('roles','managersAndTeamLeads','teamLeads','departments','designations'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|same:confirm-password',
            'ac_no' => 'required',
            'department_id' => 'required',
            'designation_id' => 'required',
            'roles' => 'required'
        ]);

        $input = $request->all();
        $input['password'] = Hash::make($input['password']);

        $user = User::create($input);
        $user->designation()->associate($request->input('designation_id'));
        $user->department()->associate($request->input('department_id'));
        $selectedRole = $request->input('roles');
        if ($selectedRole === 'employee') {
            $user->assignRole('employee');
        } elseif ($selectedRole === 'teamlead') {
            $user->assignRole(['employee', 'teamlead']);
        } elseif ($selectedRole === 'manager') {
            $user->assignRole('manager');
        }

        if ($selectedRole === 'employee' || $selectedRole === 'teamlead') {
            $user->manager_id = $request->input('manager_id');
            $user->teamlead_id = $request->input('teamlead_id');
            $user->save();
        }
        // Initialize leave balance
        if (in_array($selectedRole, ['employee', 'teamlead', 'manager'])) {
            $leaveTypes = LeaveType::all();

            foreach ($leaveTypes as $leaveType) {
                if($leaveType->name != 'Short Leave'){
                    LeaveBalance::create([
                        'user_id' => $user->id,
                        'leave_type_id' => $leaveType->id,
                        'balance' => $leaveType->count,
                    ]);
                }
            }
        }

        return redirect()->route('users.index')
            ->with('success', 'User created successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::find($id);
        return view('users.show', compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::find($id);
        $roles = Role::pluck('name', 'name')->all();
        $userRole = $user->roles->pluck('name', 'name')->all();

        $managersAndTeamLeads = User::role(['manager'])->pluck('name', 'id')->toArray();
        $teamLeads = User::role(['teamlead'])->pluck('name', 'id')->toArray();
        $departments = Department::pluck('name', 'id');
        $designations = Designation::pluck('name', 'id');
        // Fetch the user's leave balances
        $leaveBalances = LeaveBalance::where('user_id', $user->id)->get();

        return view('users.edit', compact('user', 'roles', 'userRole', 'managersAndTeamLeads', 'teamLeads','departments','designations','leaveBalances'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'ac_no' => 'required',
            'email' => 'required|email|unique:users,email,' . $id,
            'password' => 'same:confirm-password',

        ]);

        $input = $request->except(['password', 'confirm-password']);

        $user = User::find($id);

        if (auth()->user()->can('admin-access')) {
            // If the user is an admin, update the 'Roles' field
            $this->validate($request, [
                'roles' => 'required',
                'designation_id' => 'required',
                'department_id' => 'required',
            ]);
            DB::table('model_has_roles')->where('model_id', $id)->delete();
            $user->syncRoles([$request->input('roles')]);
        }

        if ($request->input('roles') === 'teamlead') {
            $user->teamlead_id = null;
            $user->manager_id = $request->input('manager_id');
        } elseif ($request->input('roles') === 'manager') {
            $user->manager_id = null;
            $user->teamlead_id = null;
        } elseif ($request->input('roles') === 'employee') {
            $user->manager_id = $request->input('manager_id');
            $user->teamlead_id = $request->input('teamlead_id');
        }
        if($request->input('password')){
            $input['password'] = Hash::make($request->input('password'));
        }

        $user->update($input);
        $user->designation()->associate($request->input('designation_id'));
        $user->department()->associate($request->input('department_id'));

        // Update leave balances for admin users
        if (auth()->user()->can('admin-access')) {
            foreach ($request->input('leave_balances') as $leaveTypeId => $balance) {
                $user->leaveBalances()->updateOrCreate(
                    ['leave_type_id' => $leaveTypeId],
                    ['balance' => $balance]
                );
            }
        }

        return redirect()->route('users.index')
            ->with('success', 'User updated successfully');
    }

    public function getUserAttendanceForCurrentMonth($id){

        // Calculate the start and end dates for the current month.
        $currentMonth = Carbon::now();
        $startDate = $currentMonth->startOfMonth()->toDateString();
        $endDate = $currentMonth->endOfMonth()->toDateString() . ' 23:59:59';

        // Retrieve the user's attendance records for the current month.
          $attendanceRecords = User::where('id', $id)
            ->with(['attendance' => function ($query) use ($startDate, $endDate) {
                $query->whereBetween('time', [$startDate, $endDate]);
            }])
            ->get();
        $totalWorkingHours = 0;
        $lastCheckIn = null;
        foreach ($attendanceRecords as $attendance) {
            foreach ($attendance->attendance as $record){
                $time =$record->time;
                $state =$record->state;
                if ($state === 'C/In') {
                    $lastCheckIn = $time;
                } elseif ($state === 'C/Out' && $lastCheckIn !== null) {
                    $checkIn = \Carbon\Carbon::parse($lastCheckIn);
                    $checkOut = $time;
                    $workingHours = $checkIn->diffInHours($checkOut);
                    $totalWorkingHours += $workingHours;
                    $lastCheckIn = null;
                }
            }
        }
        return view('users.attendance', compact('attendanceRecords','totalWorkingHours'));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        User::find($id)->delete();
        return redirect()->route('users.index')
            ->with('success', 'User deleted successfully');
    }
}
