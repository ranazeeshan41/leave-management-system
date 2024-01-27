<?php

namespace App\Http\Controllers;

use App\Models\Designation;
use Illuminate\Http\Request;
use DB;

class DesignationController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:designation-list|designation-create|designation-edit|designation-delete', ['only' => ['index','store']]);
        $this->middleware('permission:designation-create', ['only' => ['create','store']]);
        $this->middleware('permission:designation-edit', ['only' => ['edit','update']]);
        $this->middleware('permission:designation-delete', ['only' => ['destroy']]);
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $designations = Designation::orderBy('id','DESC')->get();
        return view('designations.index',compact('designations'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('designations.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:designations,name',
        ]);

        $designation = Designation::create(['name' => $request->input('name')]);

        return redirect()->route('designations.index')
            ->with('success','designation created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $designation = Designation::find($id);
        return view('designations.edit', compact('designation'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required|unique:designations,name,' . $id,
        ]);
        $designation = Designation::find($id);
        $designation->update([
            'name' => $request->input('name'),
        ]);

        return redirect()->route('designations.index')
            ->with('success', 'Designation updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        DB::table("designations")->where('id',$id)->delete();
        return redirect()->route('designations.index')
            ->with('success','Designation deleted successfully');
    }
}
