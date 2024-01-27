<?php

namespace App\Http\Controllers;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Models\Attendance;
use App\Imports\AttendanceImport;

class AttendanceController extends Controller
{
    public function index(){

         $users = User::all();
        return view('attendance.create',compact('users'));
    }
    public function attendanceReport(Request $request){
        $updatedDateRange = str_replace('/', '-', $request->dates);
        $dates = explode(" - ", $updatedDateRange);

        if (count($dates) == 2) {
            $startDate = trim($dates[0]);
             $endDate = trim($dates[1]);

            // Reformat the start and end dates from 'mm/dd/yyyy' to 'yyyy-mm-dd'
            $formattedStartDate = \DateTime::createFromFormat('m-d-Y', $startDate)->format('Y-m-d');
            $formattedEndDate = \DateTime::createFromFormat('m-d-Y', $endDate)->format('Y-m-d');

            // Add the time part to the end date
            $formattedEndDate .= ' 23:59:59';
        } else {
            echo "Invalid date range format";
        }

        //return $formattedEndDate;
        $user = $request->user;

        // Retrieve the user's attendance records for the specified date range.
         $attendanceRecords = User::where('id', $user)
            ->with(['attendance' => function ($query) use ($formattedStartDate, $formattedEndDate) {
                $query->whereBetween('time', [$formattedStartDate, $formattedEndDate]);
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

        return view('attendance.index', compact('attendanceRecords','totalWorkingHours'));
    }

    public function uploadForm()
    {
        return view('upload');
    }

    public function upload(Request $request)
    {
        $request->validate([
            'file' => 'required|file|mimes:xls,xlsx',
        ]);

        $file = $request->file('file');

        Excel::import(new AttendanceImport, $file);

        return redirect()->back()->with('success', 'Attendance records uploaded successfully.');
    }
    public function calculateWorkingHours(Request $request)
    {
        $name = 'Atiq Ur Rehman'; // Change this to the desired user's name
        $month = 10; // October
        $year = 2023; // Change this to the desired year

        $attendances = Attendance::where('name', $name)
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
        return "Total working hours for $name in $month/$year: $totalWorkingHours hours";
    }

}
