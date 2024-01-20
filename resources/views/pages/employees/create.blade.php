@extends('layouts.default')

@section('content')
  <div class="card">
    <div class="card-header">
      <strong>Tambah Karyawan</strong>
    </div>
    <div class="card-body card-block">
      <form action="{{ route('employee.store')}}" method="POST" enctype="multipart/form-data">
        @csrf

        <div class="form-group mb-4">
          <label for="employee" class="form-control-label">Nama Karyawan</label>
          <input type="text" 
            name="name" 
            id="employee"
            value="{{ old('name') }}"
            class="form-control @error('name') is_invalid @enderror">
          @error('name') <div class="text-danger fs-6">{{ $message }}</div> @enderror
        </div>

        <div class="form-group mb-4">
          <label for="email" class="form-control-label">Email</label>
          <input type="text" 
            name="email" 
            id="email"
            value="{{ old('email') }}"
            class="form-control @error('email') is_invalid @enderror">
          @error('email') <div class="text-danger fs-6">{{ $message }}</div> @enderror
        </div>

        <div class="form-group mb-4">
          <label for="phone" class="form-control-label">No telp :</label>
          <input type="text" 
            name="phone" 
            id="phone"
            value="{{ old('phone') }}"
            class="form-control @error('phone') is_invalid @enderror">
          @error('phone') <div class="text-danger fs-6">{{ $message }}</div> @enderror
        </div>

        <div class="form-group mb-4">
          <label for="age" class="form-control-label">Age</label>
          <input type="int" min="18" max="99"
            name="age" 
            id="age"
            value="{{ old('age') }}"
            class="form-control @error('age') is_invalid @enderror">
          @error('age') <div class="text-danger fs-6">{{ $message }}</div> @enderror
        </div>

        <div class="form-group mb-4">
          <label class="form-control-label">Gender</label>
          <div class="form-check">
              <input class="form-check-input" type="radio" name="gender" id="male" value="male" {{ old('gender') == 'male' ? 'checked' : '' }}>
              <label class="form-check-label" for="male">Male</label>
          </div>
          <div class="form-check">
              <input class="form-check-input" type="radio" name="gender" id="female" value="female" {{ old('gender') == 'female' ? 'checked' : '' }}>
              <label class="form-check-label" for="female">Female</label>
          </div>
          @error('gender') <div class="text-danger fs-6">{{ $message }}</div> @enderror
        </div>

        <div class="form-group mb-4">
          <label for="photo" class="form-control-label">Foto Karyawan</label>
          <input type="file"
            name="photo" 
            value="{{ old('photo') }}"
            accept="image/*"
            class="form-control @error('photo') is-invalid @enderror"/>
          @error('photo') <div class="text-danger fs-6">{{ $message }}</div> @enderror
        </div>

        <div class="form-group mb-4">
          <label for="position" class="form-control-label">Nama Posisi</label>
          <select name="position_id" 
            id="position"
            class="form-control @error('position_id') is-invalid @enderror"
          >
          <option selected>Pilih - Posisi</option>
            @foreach ($positions as $position)
              <option value="{{ $position->id }}">Departemen {{ $position->department->name }} : {{ $position->name }}</option>  
            @endforeach
          </select>
          @error('position_id') <div class="text-danger fs-6">{{ $message }}</div> @enderror
        </div>

        <div class="form-group">
          <button class="btn btn-primary btn-block" type="submit">
            Tambah Karyawan 
          </button>
        </div>
      </form>
    </div>
  </div>
@endsection