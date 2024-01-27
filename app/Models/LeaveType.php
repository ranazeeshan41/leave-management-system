<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LeaveType extends Model
{
    use HasFactory;
    protected $table = 'leave_types';
    protected $fillable = [
        'name', 'count',
    ];

    public function leaveApplications()
    {
        return $this->hasMany(LeaveApplication::class);
    }
    public function leaveBalances()
    {
        return $this->hasMany(LeaveBalance::class);
    }
}
