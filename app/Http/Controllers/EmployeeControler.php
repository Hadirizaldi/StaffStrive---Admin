<?php

namespace App\Http\Controllers;

use App\Http\Requests\EmployeeRequest;
use App\Models\Employee;
use App\Models\Position;
use Illuminate\Http\Request;

class EmployeeControler extends Controller
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
        $employees = Employee::with('position.department')->get();
        // dd($employees->position->department->name);

        return view('pages.employees.index')->with([
            'employees' => $employees,

        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $employees = Employee::all();
        // $positions = Position::all();
        $positions = Position::with('department')->get();
        // dd($positions->department->name);
        // dd($positions);

        return view('pages.employees.create')->with([
            'positions' => $positions,
            'employees' => $employees
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(EmployeeRequest $request)
    {
        try {
            // dd($request->all());

            // validation
            $data = $request->validated();
            // dd($data);
            // path for photo
            $data['photo'] = $request->file('photo')->store(
                'assets/product',
                'public'
            );

            // create
            Employee::create($data);

            return redirect()->route('employee.index');
        } catch (\Exception $e) {
            dd($e->getMessage());
        }
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
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $employee = Employee::findOrFail($id);

        $employee->delete();
        return redirect()->route('employee.index');
    }
}
