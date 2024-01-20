<?php

namespace App\Http\Controllers;

use App\Http\Requests\EmployeeRequest;
use App\Models\Employee;
use App\Models\Position;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

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
        $employees = Employee::with('position.department')->paginate(10);
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

        // $employees = Employee::all()->first();
        // dd($employees->position->department->name);
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
                'assets/employees',
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
        $employee = Employee::findOrFail($id);


        return view('pages.employees.show')->with([
            'employee' => $employee
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $employee = Employee::findOrFail($id);
        $positions = Position::all();

        return view('pages.employees.edit')->with([
            'employee' => $employee,
            'positions' => $positions
        ]);
    }


    /**
     * Update the specified resource in storage.
     */
    public function update(EmployeeRequest $request, string $id)
    {
        try {
            $employee = Employee::findOrFail($id);

            $data = $request->validated();

            // Jika ada file foto baru di-upload, simpan foto yang baru
            if ($request->hasFile('photo')) {
                $data['photo'] = $request->file('photo')->store(
                    'assets/employees',
                    'public'
                );

                // Storage::disk('public')->delete($employee->photo);

                // $filePath = Storage::disk('public')->put('assets/employees', request()->file('photo'), 'public');
                // $data['photo'] = $filePath;
            }

            $employee->update($data);
            Log::info('Employee updated successfully.'); // Tambahkan log ini

            return redirect()->route('employee.index');
        } catch (\Exception $e) {
            Log::error('Error updating employee: ' . $e->getMessage()); // Tambahkan log ini
            dd($e->getMessage());
        }
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
