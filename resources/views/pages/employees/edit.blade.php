@extends('layouts.default')

@section('content')
    <div class="card">
        <div class="card-header">
            <strong>Edit Karyawan</strong>
        </div>
        <div class="card-body card-block">
            <form action="{{ route('employee.update', $employee->id) }}" method="POST" enctype="multipart/form-data">
                @method("PUT")
                @csrf

                <div class="form-group mb-4">
                    <label for="name" class="form-control-label">Nama Karyawan</label>
                    <input type="text" name="name" id="name" value="{{ old('name') ? old('name') : $employee->name }}" class="form-control @error('name') is-invalid @enderror">
                    @error('name') <div class="text-danger">{{ $message }}</div> @enderror
                </div>

                <div class="form-group mb-4">
                    <label for="email" class="form-control-label">Email</label>
                    <input type="text" name="email" id="email" value="{{ old('email') ? old('email') : $employee->email }}" class="form-control @error('email') is-invalid @enderror">
                    @error('email') <div class="text-danger">{{ $message }}</div> @enderror
                </div>

                <div class="form-group mb-4">
                    <label for="phone" class="form-control-label">No telp :</label>
                    <input type="text" 
                        name="phone" 
                        id="phone"
                        value="{{ old('phone') ? old('phone') : $employee->phone}}"
                        class="form-control @error('phone') is_invalid @enderror">
                    @error('phone') <div class="text-danger fs-6">{{ $message }}</div> @enderror
                </div>

                <div class="form-group mb-4">
                    <label for="age" class="form-control-label">Age</label>
                    <input type="int" min="18" max="99"
                        name="age" 
                        id="age"
                        value="{{ old('age') ? old('age') : $employee->age}}"
                        class="form-control @error('age') is_invalid @enderror">
                    @error('age') <div class="text-danger fs-6">{{ $message }}</div> @enderror
                </div>

                <div class="form-group mb-4">
                    <label for="gender" class="form-control-label">Jenis Kelamin</label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender" id="male" value="male" {{ old('gender', $employee->gender) == 'male' ? 'checked' : '' }}>
                        <label class="form-check-label" for="male">Laki-Laki</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender" id="female" value="female" {{ old('gender', $employee->gender) == 'female' ? 'checked' : '' }}>
                        <label class="form-check-label" for="female">Perempuan</label>
                    </div>
                    @error('gender') <div class="text-danger">{{ $message }}</div> @enderror
                </div>

                <div class="form-group mb-4">
                    <label for="status" class="form-control-label">Status</label>
                    <select name="status" id="status" class="form-control">
                        <option value=1 {{ $employee->status == 1 ? 'selected' : '' }}>Active</option>
                        <option value=0 {{ $employee->status == 0 ? 'selected' : '' }}>Inactive</option>
                    </select>
                </div>

                <div class="form-group mb-4">
                    <label for="photo" class="form-control-label">Foto Karyawan</label>
                    <input type="file" name="photo" accept="image/*" class="form-control"/>
                    @if ($employee->photo)
                        <img src="{{ $employee->photo }}" alt="Employee Photo" class="mt-2" style="max-width: 200px"/>
                    @endif
                </div>

                <div class="form-group mb-4">
                    <label for="position_id" class="form-control-label">Posisi</label>
                    <select name="position_id" id="position_id" class="form-control @error('position_id') is-invalid @enderror">
                        @foreach ($positions as $position)
                            <option value="{{ $position->id }}" {{ $position->id == $employee->position_id ? 'selected' : '' }}>
                                Departemen {{ $position->department->name }} : {{ $position->name }}
                            </option>
                        @endforeach
                    </select>
                    @error('position_id') <div class="text-danger">{{ $message }}</div> @enderror
                </div>

                <div class="form-group mb-4">
                    <button class="btn btn-primary" type="submit">Update Karyawan</button>
                </div>
            </form>
        </div>
    </div>
@endsection
