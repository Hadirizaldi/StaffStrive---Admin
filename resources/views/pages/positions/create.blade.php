@extends('layouts.default')

@section('content')
  <div class="card">
    <div class="card-header">
      <strong>Tambah Position</strong>
    </div>
    <div class="card-body card-block">
      <form action="{{ route('position.store')}}" method="POST">
      {{-- <form action="#" method="POST"> --}}
        @csrf

        <div class="form-group mb-4">
          <label for="name-department" class="form-control-label">Nama Position</label>
          <input type="text" 
            name="name" 
            id="name-department"
            value="{{ old('name') }}"
            class="form-control @error('name') is_invalid @enderror">
          @error('name') <div class="text-danger fs-6">{{ $message }}</div> @enderror
        </div>

        <div class="form-group mb-4">
          <label for="department" class="form-control-label">Nama Department</label>
          <select name="department_id" 
            id="department"
            class="form-control @error('department_id') is-invalid @enderror"
          >
            @foreach ($departments as $department)
              <option value="{{ $department->id }}">{{ $department->name }}</option>    
            @endforeach
          </select>
          @error('department_id') <div class="text-danger fs-6">{{ $message }}</div> @enderror
        </div>
        <div class="form-group">
          <button class="btn btn-primary btn-block" type="submit">
            Tambah Position
          </button>
        </div>
      </form>
    </div>
  </div>
@endsection