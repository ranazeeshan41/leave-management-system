<?php

namespace App\Imports;

use App\Models\Attendance;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

class AttendanceImport implements ToModel, WithStartRow
{
    public function startRow(): int
    {
        return 2; // Start importing from the first row (no header row to skip).
    }

    public function model(array $row)
    {
        //dd($row);
        return new Attendance([
            'ac_no' => $row[0],     // Assuming 'AC-No.' is the first column (index 0).
            'no' => $row[1],        // Assuming 'No.' is the second column (index 1).
            'name' => $row[2],      // Assuming 'Name' is the third column (index 2).
            'time' => \Carbon\Carbon::createFromFormat('n/j/Y g:i A', $row[3]),
            'state' => $row[4],
            'new_state' => $row[5],
            'exception' => $row[6],
            //'operation' => $row[7],  // Assuming 'Operation' is the eighth column (index 7).
        ]);
    }
}
