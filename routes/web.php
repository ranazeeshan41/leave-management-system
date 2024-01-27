<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\DesignationController;
use App\Http\Controllers\DepartmentController;
use App\Http\Controllers\LeaveTypeController;
use App\Http\Controllers\LeaveApplicationController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AttendanceController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Auth::routes();

Route::group(['middleware' => ['auth']], function() {

    Route::get('/', [HomeController::class,'index'])->name('home');
    Route::match(['get', 'post'], '/user-leaves/{id}', [HomeController::class,'userLeaves'])->name('user-leaves');

    /*Designation routes*/
    Route::resource('designations', DesignationController::class);
    Route::delete('/designations/delete/{id}', [DesignationController::class, 'destroy']);

    /*Department Routes*/
    Route::resource('departments', DepartmentController::class);
    Route::delete('/departments/delete/{id}', [DepartmentController::class, 'destroy']);

    /*Roles Routes*/
    Route::resource('roles', RoleController::class);
    Route::delete('/roles/delete/{id}', [RoleController::class, 'destroy']);

    /*Users Routes*/
    Route::resource('users', UserController::class);
    Route::delete('/users/delete/{id}', [UserController::class, 'destroy']);
    Route::get('/users/attendance/{id}', [UserController::class, 'getUserAttendanceForCurrentMonth'])->name('users.getUserAttendanceForCurrentMonth');

    /*Leave Type Routes*/
    Route::resource('leave-types', LeaveTypeController::class);
    Route::delete('/leave-types/delete/{id}', [LeaveTypeController::class, 'destroy']);
    Route::post('leave-types/reset-leave-balances', [LeaveTypeController::class, 'resetLeaveBalances'])->name('leave-types.resetLeaveBalances');

    /*Leave applications Routes*/
    Route::resource('leave_applications', LeaveApplicationController::class);
    Route::delete('/leave_applications/delete/{id}', [LeaveApplicationController::class, 'destroy']);
    Route::post('/leave_applications/{leave}/send-for-approval',[LeaveApplicationController::class, 'sendForApproval'])->name('leave_applications.sendForApproval');
    Route::post('/leave_applications/{leave}/approve', [LeaveApplicationController::class,'approve'])->name('leave_applications.approve');
    Route::post('/leave_applications/{id}/deny', [LeaveApplicationController::class,'deny'])->name('leave_applications.deny');
    //Route::get('/filter-leave', [LeaveApplicationController::class,'filterLeave'])->name('filter-leave');

    /*Attendance Route*/
    Route::get('/attendance', [AttendanceController::class,'index'])->name('attendance.index');
    Route::post('/attendance/report', [AttendanceController::class,'attendanceReport'])->name('attendance.report');
    Route::get('/upload',[AttendanceController::class,'uploadForm'])->name('attendance.upload');
    Route::post('/upload',[AttendanceController::class,'upload'])->name('attendance.save');
    Route::get('/calculate-working-hours',[AttendanceController::class,'calculateWorkingHours'])->name('attendance.calculate');

});

