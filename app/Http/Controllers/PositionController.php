<?php

namespace App\Http\Controllers;

use App\Http\Requests\PositionRequest;
use App\Models\Department;
use App\Models\Position;
use Illuminate\Http\Request;

class PositionController extends Controller
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
        $positions = Position::with('department')->get();

        return view('pages.positions.index')->with([
            'positions' => $positions
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $departments = Department::all();

        return view('pages.positions.create')->with([
            'departments' => $departments
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(PositionRequest $request)
    {
        $data = $request->validated();

        Position::create($data);

        return redirect()->route('position.index');
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
        // $position = Position::findOrFail($id)->with('department')->first(); //alternatif cara untuk query
        $position = Position::with('department')->findOrFail($id);
        $departments = Department::all();
        // dd($position);

        return view('pages.positions.edit')->with([
            'position' => $position,
            'departments' => $departments
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(PositionRequest $request, string $id)
    {
        $data = $request->validated();

        $position = Position::findOrFail($id);
        // $position = Position::where('id', $id)->first(); //alternatif cara untuk query
        // dd($position);
        $position->update($data);

        return redirect()->route('position.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $position = Position::findOrFail($id);
        $position->delete();

        // Todo : saat position di delete maka semua employee id akan di delete juga

        return redirect()->route('position.index');
    }
}
