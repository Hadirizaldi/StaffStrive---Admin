<?php

namespace App\Http\Controllers;

use App\Http\Requests\DepartmentRequest;
use App\Models\Department;
use App\Models\Position;
use Illuminate\Http\Request;

class DepartmenController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $departments = Department::all();

        return view('pages.departments.index')->with([
            "departments" => $departments
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('pages.departments.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(DepartmentRequest $request)
    {
        $data = $request->validated();
        Department::create($data);

        return redirect()->route('department.index');
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
    public function edit(string $id)
    {
        $department = Department::findOrFail($id);

        return view('pages.departments.edit')->with([
            'department' => $department
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(DepartmentRequest $request, string $id)
    {
        $data = $request->validated();

        $department = Department::findOrFail("$id");
        $department->update($data);

        return redirect()->route('department.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $department = Department::find($id);
        $department->delete();

        // saat department di delete maka semua department id akan di delete juga
        Position::where('department_id', $id)->delete();

        return redirect()->route('department.index');
    }
}
