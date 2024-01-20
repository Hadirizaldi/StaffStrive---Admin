@extends('layouts.default')

@section('content')
    <div class="orders">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="boc-title">Daftar Semua Karyawan</h4>
                    </div>
                    <div class="card-body--">
                        <div class="table stats order-table ov-h">
                            <table class="table">
                                <thead>
                                    <tr class>
                                        <th>#</th>
                                        <th>Employee Name</th>
                                        <th>Position Name</th>
                                        <th>Department Name</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse ($employees as $employee)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $employee->name }}</td>
                                            <td>{{ $employee->position->name }}</td>
                                            <td>{{ $employee->position->department->name }}</td>
                                            <td>
                                                <a href="{{ route('employee.show', $employee->id) }}" class="btn btn-info btn-sm">
                                                    <i class="fa fa-external-link"></i>
                                                </a>
                                                <a href="{{ route('employee.edit', $employee->id) }}" class="btn btn-primary btn-sm">
                                                    <i class="fa fa-pencil"></i>
                                                </a>
                                                <button class="btn btn-danger btn-sm" 
                                                    data-toggle="modal" 
                                                    data-target="#deleteConfirmationModal{{ $employee->id }}">
                                                    <i class="fa fa-trash "></i>
                                            </button>
                                            </td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="6" class="text-center p-5">
                                                <h1>Data Karyawan tidak tersedia</h1>
                                            </td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                        <div class=" px-4 d-flex justify-content-between align-items-start">
                            <div class="small text-muted">
                                Showing
                                {{ $employees->firstItem() }}
                                to
                                {{ $employees->lastItem() }}
                                of
                                {{ $employees->total() }}
                            </div>
                            <div class="">
                                {{ $employees->links('pagination::bootstrap-4')}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@foreach ($employees as $employee)
    <!-- Modal Konfirmasi Hapus -->
    <div class="modal fade" id="deleteConfirmationModal{{ $employee->id }}" tabindex="-1" role="dialog" aria-labelledby="deleteConfirmationModalLabel{{ $employee->id }}" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header d-flex">
                    <h5 class="modal-title" id="deleteConfirmationModalLabel{{ $employee->id }}">Konfirmasi Penghapusan</h5>
                    <a type="button" data-dismiss="modal" 
                        aria-label="Close" aria-hidden="true" 
                        class="text-danger fs-4 fw-bolder">
                        <i class="fa fa-times-circle"></i>
                    </a>
                </div>
                <div class="modal-body">
                    Apakah Anda yakin ingin menghapus departemen "{{ $employee->name }}"?
                </div>
                <div class="modal-footer d-flex align-items-start justify-content-end">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    <form action="{{ route('employee.destroy', $employee->id) }}" method="post" class="mr-2">
                        @method('delete')
                        @csrf
                        <button type="submit" class="btn btn-danger">Hapus</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endforeach


