<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LeaveType;
use App\Models\User;
use App\Models\LeaveApplication;

class LeaveApplicationController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:leave-application-list|leave-application-create|leave-application-edit|leave-application-delete', ['only' => ['index','store']]);
        $this->middleware('permission:leave-application-create', ['only' => ['create','store']]);
        $this->middleware('permission:leave-application-edit', ['only' => ['edit','update']]);
        $this->middleware('permission:leave-application-delete', ['only' => ['destroy']]);
    }

    public function index(Request $request)
    {
        $user = auth()->user();
        $allowedUserIds = [];

        if ($user->hasRole('admin')) {
            $allowedUserIds = User::pluck('id')->toArray();
        } else {
            $allowedUserIds[] = $user->id;

            if ($user->hasRole('teamlead')) {
                $teamMembers = User::where('teamlead_id', $user->id)->pluck('id');
                $allowedUserIds = array_merge($allowedUserIds, $teamMembers->toArray());
            } elseif ($user->hasRole('manager')) {
                $subordinates = User::where('manager_id', $user->id)->pluck('id');
                $teamLeads = User::where('teamlead_id', $user->id)->pluck('id');
                $allowedUserIds = array_merge($allowedUserIds, $subordinates->toArray(), $teamLeads->toArray());
            }
        }
        // Check if a month filter is provided in the request
        $selectedMonth = $request->input('month');
        if($selectedMonth > 0){
            $query  = LeaveApplication::whereIn('user_id', $allowedUserIds)
                ->orderBy('created_at', 'desc')
                ->with('user')
                ->with('leaveType');
            if ($selectedMonth) {
                $query->whereMonth('created_at', $selectedMonth);
            }

            $leaveApplications = $query->get();
        }else{
            $query  = LeaveApplication::whereIn('user_id', $allowedUserIds)
                ->orderBy('created_at', 'desc')
                ->with('user')
                ->with('leaveType');
            $leaveApplications = $query->get();
        }
        return view('leave-applications.index', compact('leaveApplications'));
    }

    public function create()
    {
        $leaveTypes = LeaveType::all();
        return view('leave-applications.create', compact('leaveTypes'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'leave_type_id' => 'required',
            'start_date' => 'required|date',
            'end_date' => 'required|date',
            'start_time' => 'required_if:leave_type_id,5',
            'end_time' => 'required_if:leave_type_id,5',
            'reason' => 'required',
        ]);


        $user = auth()->user();
        $role = $user->getRoleNames()->first();
        if ($role === 'manager') {
            $status = 1;
        }else{
            $status = 0;
        }
        $leaveType = LeaveType::find($request->input('leave_type_id'));
        if($leaveType->id == 5){
            $userLeaveBalance = $user->leaveBalances()->where('leave_type_id', 2)->first();
        }else{
             $userLeaveBalance = $user->leaveBalances()->where('leave_type_id', $leaveType->id)->first();
        }


        if ($userLeaveBalance) {
            $numberOfHours= null;
            if ($request->input('leave_type_id') == 5) {
                // Calculate the number of days for short leave based on start and end times
                $startDateTime = \Carbon\Carbon::parse($request->input('start_date') . ' ' . $request->input('start_time'));
                $endDateTime = \Carbon\Carbon::parse($request->input('end_date') . ' ' . $request->input('end_time'));
                $numberOfHours = $endDateTime->diffInMinutes($startDateTime) / 60;

                $workingHoursPerDay = 8; // Adjust this based on your organization's policy
                $numberOfDays = $numberOfHours / $workingHoursPerDay;

            } else {
                $numberOfDays = $request->input('number_of_days');
            }
            // Check if the leave type is casual leave and if the user has already applied twice this month
            if ($leaveType->id == 2 && $this->hasExceededCasualLeaveLimit($user)) {
                $validator = \Validator::make([], []);
                $validator->errors()->add('leave_limit', 'You can apply for casual leave only twice in a month and Short leave is considered as a Casual leave.');

                return redirect()
                    ->back()
                    ->withErrors($validator)
                    ->withInput();
            }


            if ($userLeaveBalance->balance >= $numberOfDays) {

                if ($request->input('leave_type_id') == 5) {
                    $userLeaveBalance->balance -= $numberOfDays;
                    $userLeaveBalance->save();

                }else{
                    $userLeaveBalance->decrement('balance', $numberOfDays);
                }


                $leaveApplication = new LeaveApplication([
                    'user_id' => auth()->user()->id,
                    'leave_type_id' => $request->input('leave_type_id'),
                    'start_date' => $request->input('start_date'),
                    'end_date' => $request->input('end_date'),
                    'start_time' => $request->input('start_time'),
                    'end_time' => $request->input('end_time'),
                    'reason' => $request->input('reason'),
                    //'remarks' => $request->input('remarks'),
                    'status' => $status,/// 0=pending,1=send for approval,2=approved,3=denied
                    'number_of_days' => $request->input('number_of_days'),
                    'number_of_hours' => $numberOfHours ? : null,
                ]);

                $user->leaveApplications()->save($leaveApplication);

                return redirect()->route('leave_applications.index')->with('success', 'Leave application submitted successfully.');
            } else {
                return redirect()->back()->with('error', 'Insufficient leave balance.');
            }
        }else {
            return redirect()->back()->with('error', 'Leave balance record not found.');
        }

    }
    private function hasExceededCasualLeaveLimit($user)
    {
        // Get the current month and year
        $currentMonth = now()->format('m');
        $currentYear = now()->format('Y');

        // Count the casual leave applications within the current month and year
        $casualLeaveCount = $user->leaveApplications()
            ->where('leave_type_id', 2)
            ->whereMonth('created_at', $currentMonth)
            ->whereYear('created_at', $currentYear)
            ->count();

        return $casualLeaveCount >= 2;
    }

    public function edit($id)
    {
        $leaveApplication = LeaveApplication::findOrFail($id);
        return view('leave-applications.edit', compact('leaveApplication'));
    }

    public function update(Request $request, $id)
    {
        // Validate and update the leave application
        // You should perform validation and update logic here

        // Example:
        // $leaveApplication = LeaveApplication::findOrFail($id);
        // $leaveApplication->update($request->all());

        return redirect()->route('leave_applications.index')
            ->with('success', 'Leave application updated successfully');
    }

    public function destroy($id)
    {
        // Delete the leave application by ID
        // You should perform delete logic here

        // Example:
        // $leaveApplication = LeaveApplication::findOrFail($id);
        // $leaveApplication->delete();

        return redirect()->route('leave_applications.index')
            ->with('success', 'Leave application deleted successfully');
    }

    public function sendForApproval(LeaveApplication $leave)
    {
        // Check if the user has the role 'teamlead' and the leave status is 'Pending' (0)
        if (auth()->user()->hasRole('teamlead') && $leave->status === 0) {
            // Update the leave application status to 'Sent for Approval' (1)
            $leave->update(['status' => 1]);

            return response()->json(['message' => 'Leave application sent for approval.']);
        }

        return response()->json(['error' => 'Unauthorized'], 403);
    }

    public function approve(LeaveApplication $leave)
    {
        // Check if the user has the role 'manager' and the leave status is 'Sent for Approval' (1)
        if (auth()->user()->hasRole('manager') && $leave->status === 1) {
            // Update the leave application status to 'Approved' (2)
            $leave->update(['status' => 2]);

            return response()->json(['message' => 'Leave application approved.']);
        }

        return response()->json(['error' => 'Unauthorized'], 403);
    }
    public function deny($id)
    {
        if (auth()->user()->hasRole('manager') || auth()->user()->hasRole('teamlead')) {
            $leaveApplication = LeaveApplication::find($id);

            // Update the status of the leave application to "Denied"

            if($leaveApplication){
                $type_id = $leaveApplication->leave_type_id;
                $user = User::with('leaveBalances')->find($leaveApplication->user_id);
                $leaveBalance = $user->leaveBalances->where('leave_type_id', 2)->first();
            }
            if($type_id == 5 && $leaveBalance){
                $startDateTime = \Carbon\Carbon::parse($leaveApplication->start_date . ' ' . $leaveApplication->start_time);
                $endDateTime = \Carbon\Carbon::parse($leaveApplication->end_date . ' ' . $leaveApplication->end_time);
                $numberOfHours = $endDateTime->diffInMinutes($startDateTime) / 60;

                $incrementAmount = $numberOfHours/8;
                $leaveBalance->balance += $incrementAmount;
                $leaveBalance->save();


                //$user->leaveBalances->where('leave_type_id', 2)->first()->increment('balance', $incrementAmount);

            }else{
                $user->leaveBalances->where('leave_type_id', $leaveApplication->leave_type_id)->first()->increment('balance', $leaveApplication->number_of_days);
            }
            $leaveApplication->status = 3; // Denied
            $leaveApplication->save();

            // Increment the user's leave balance by the number of days denied
            return response()->json(['message' => 'Leave application denied.']);
        }
        return response()->json(['error' => 'Unauthorized'], 403);
    }

}
