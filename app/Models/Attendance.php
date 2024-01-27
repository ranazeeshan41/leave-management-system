<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    use HasFactory;
    protected $casts = [
        'time' => 'datetime', // This will cast 'time' attribute to Carbon instance
    ];
    protected $fillable = [
        'ac_no', 'no','name','time','state','new_state','exception','operation'
    ];
}
