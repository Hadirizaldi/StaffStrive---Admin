@extends('layouts.default')

@section('content')
    <div class="card">
        <div class="card-header">
            <strong>Detail Karyawan</strong>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <dl class="row">
                        <dt class="col-sm-4">Nama Karyawan:</dt>
                        <dd class="col-sm-8">{{ $employee->name }}</dd>

                        <dt class="col-sm-4">Email:</dt>
                        <dd class="col-sm-8">{{ $employee->email }}</dd>

                        <dt class="col-sm-4">No Telp:</dt>
                        <dd class="col-sm-8">{{ $employee->phone }}</dd>

                        <dt class="col-sm-4">Umur:</dt>
                        <dd class="col-sm-8">{{ $employee->age }}</dd>

                        <dt class="col-sm-4">Jenis Kelamin:</dt>
                        <dd class="col-sm-8">{{ $employee->gender }}</dd>

                        <dt class="col-sm-4">Status:</dt>
                        <dd class="col-sm-8">{{ $employee->status == 1 ? 'Active' : 'Inactive' }}</dd>

                        <dt class="col-sm-4">Posisi:</dt>
                        <dd class="col-sm-8">{{ $employee->position->name }}</dd>

                        <dt class="col-sm-4">Departemen:</dt>
                        <dd class="col-sm-8">{{ $employee->position->department->name }}</dd>
                    </dl>
                </div>
                <div class="col-md-6 text-center">
                    <img src="{{ $employee->photo }}" alt="Employee Photo" class="img-fluid">
                </div>
            </div>

            <div class="mt-3">
                <a href="{{ route('employee.index') }}" class="btn btn-primary">Kembali</a>
            </div>
        </div>
    </div>
@endsection
