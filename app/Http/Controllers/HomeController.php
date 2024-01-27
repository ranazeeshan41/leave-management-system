<?php

namespace App\Http\Controllers;

use App\Models\Attendance;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\LeaveApplication;
use App\Models\LeaveType;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $user = auth()->user();
        $totalUsers = User::count();
        $userLeaveCounts = $this->leaveCounts();
        $leaveData = $this->getLeaveData($user);


         $currentYear = date('Y');
         $currentMonth = date('m');
         $attendance_id = $user->ac_no;

         $month = $currentMonth;
         $year = $currentYear;

        $attendances = Attendance::where('ac_no', $attendance_id)
            ->whereMonth('time', $month)
            ->whereYear('time', $year)
            ->orderBy('time')
            ->get();

        $totalWorkingHours = 0;
        $lastCheckIn = null;

        foreach ($attendances as $attendance) {
            $time = $attendance->time;
            $state = $attendance->state;

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




        return view('home', compact('leaveData','totalUsers','userLeaveCounts','totalWorkingHours'));
    }

    public function userLeaves($id){

        $user = User::find($id);
        //$userLeaveCounts = $this->leaveCounts();
        $leaveData = $this->getLeaveData($user);
        return view('users.leave', compact('leaveData'));

    }

    public function getLeaveData($user)
    {
        $leaveTypes = LeaveType::all();
        $leaveData = [
            'user' => $user,
            'total' => [],
            'remaining' => [],
            'taken' => [],
        ];

        foreach ($leaveTypes as $leaveType) {
            // Get total leave count for this leave type
            $totalLeaveCount = $leaveType->count;

            // Get the user's taken leave count
            $takenLeaveCount = LeaveApplication::where('leave_type_id', $leaveType->id)
                ->where('user_id', $user->id)
                ->where('status', 2) // Filter by status = 2 (approved)
                ->count();

            // Calculate remaining leave count
            $remainingLeaveCount = $totalLeaveCount - $takenLeaveCount;

            $leaveData['total'][$leaveType->name] = $totalLeaveCount;
            $leaveData['remaining'][$leaveType->name] = $remainingLeaveCount;
            $leaveData['taken'][$leaveType->name] = $takenLeaveCount;
        }

        return $leaveData;
    }

    public function leaveCounts()
    {
        $user = auth()->user();

        // Get the user's leave counts
        $userLeaveCounts = [];
        if ($user->hasRole('admin')) {
            $leaveTypes = LeaveType::all();
            foreach ($leaveTypes as $leaveType) {
                $userLeaveCounts[$leaveType->name] = LeaveApplication::where('leave_type_id', $leaveType->id)->where('status', 2)->count();
            }
        }

        return $userLeaveCounts;
    }

}
