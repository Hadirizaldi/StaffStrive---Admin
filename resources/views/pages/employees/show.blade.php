@extends('layouts.default')

@section('content')
    <div class="card">
        <div class="card-header">
            <strong>Detail Karyawan</strong>
        </div>
        <div class="card-body card-block">
            <div>
                <strong>Nama Karyawan:</strong> {{ $employee->name }}
            </div>
            <div>
                <strong>Email:</strong> {{ $employee->email }}
            </div>
            <div>
                <strong>No Telp:</strong> {{ $employee->phone }}
            </div>
            <div>
                <strong>Umur:</strong> {{ $employee->age }}
            </div>
            <div>
                <strong>Jenis Kelamin:</strong> {{ $employee->gender }}
            </div>
            <div>
                <strong>Status:</strong> {{ $employee->status == 1 ? 'Active' : 'Inactive' }}
            </div>
            <div>
                <strong>Posisi:</strong> {{ $employee->position->name }}
            </div>
            <div>
                <strong>Departemen:</strong> {{ $employee->position->department->name }}
            </div>
            <div>
                <strong>Foto:</strong>
                <img src="{{ $employee->photo }}" alt="Employee Photo" style="max-width: 200px; max-height: 200px;">
            </div>
            <div>
                <a href="{{ route('employee.index') }}" class="btn btn-primary">Kembali</a>
            </div>
        </div>
    </div>
@endsection
