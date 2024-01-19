@extends('layouts.default')

@section('content')
  <div class="card">
    <div class="card-header">
      <strong>Tambah Departemen</strong>
    </div>
    <div class="card-body card-block">
      <form action="{{ route('department.store')}}" method="POST">
      {{-- <form action="#" method="POST"> --}}
        @csrf

        <div class="form-group">
          <label for="name-department" class="form-control-label">Nama Departemen</label>
          <input type="text" 
            name="name" 
            id="name-department"
            value="{{ old('name') }}"
            class="form-control @error('name') is_invalid @enderror">
          @error('name') <div class="text-danger fs-6">{{ $message }}</div> @enderror
        </div>
        <div class="form-group">
          <button class="btn btn-primary btn-block" type="submit">
            Tambah Departemen
          </button>
        </div>
      </form>
    </div>
  </div>
@endsection