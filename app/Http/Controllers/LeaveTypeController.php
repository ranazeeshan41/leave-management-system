<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LeaveType;
use App\Models\LeaveBalance;

class LeaveTypeController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:leave-type-list|leave-type-create|leave-type-edit|leave-type-delete', ['only' => ['index','store']]);
        $this->middleware('permission:leave-type-create', ['only' => ['create','store']]);
        $this->middleware('permission:leave-type-edit', ['only' => ['edit','update']]);
        $this->middleware('permission:leave-type-delete', ['only' => ['destroy']]);
    }

    public function index()
    {
        $leaveTypes = LeaveType::orderBy('id', 'DESC')->get();

        return view('leave-types.index', compact('leaveTypes'));
    }

    public function create()
    {
        return view('leave-types.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:leave_types',
            //'count' => 'required|integer',
        ]);

        LeaveType::create([
            'name' => $request->input('name'),
            'count' => $request->input('count'),
        ]);

        return redirect()->route('leave-types.index')
            ->with('success', 'Leave type created successfully');
    }

    public function edit($id)
    {
        $leaveType = LeaveType::find($id);
        return view('leave-types.edit', compact('leaveType'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|unique:leave_types,name,' . $id,
            //'count' => 'required|integer',
        ]);

        $leaveType = LeaveType::find($id);
        $leaveType->update([
            'name' => $request->input('name'),
            'count' => $request->input('count'),
        ]);

        return redirect()->route('leave-types.index')
            ->with('success', 'Leave type updated successfully');
    }
    public function destroy($id)
    {
        $leaveType = LeaveType::find($id);
        $leaveType->delete();

        return redirect()->route('leave-types.index')
            ->with('success', 'Leave type deleted successfully');
    }

    public function resetLeaveBalances(Request $request)
    {
        // Check if the user has permission to reset leave balances
        if (!auth()->user()->can('admin-access')) {
            return response()->json(['success' => false, 'message' => 'Permission denied']);
        }

        $leaveTypeId = $request->input('leave_type_id');

        // Find the leave type and its count
        $leaveType = LeaveType::find($leaveTypeId);

        if (!$leaveType) {
            return response()->json(['success' => false, 'message' => 'Leave type not found']);
        }

        $leaveTypeCount = $leaveType->count;

        // Reset leave balances for all users with this leave type
        $usersWithLeaveType = LeaveBalance::where('leave_type_id', $leaveTypeId)->get();

        foreach ($usersWithLeaveType as $userLeaveBalance) {
            $userLeaveBalance->update(['balance' => $leaveTypeCount]);
        }

        return response()->json(['success' => true, 'message' => 'Leave balances reset successfully']);
    }
}
