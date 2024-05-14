@extends('admin.main')
@section('content')
    <main id="main" class="main">
        <section class="section dashboard">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="row">
                                <div class="col">
                                    <h4>
                                        User
                                    </h4>
                                </div>
                                <div class="col ">
                                    <a href="{{ route('users.index') }}" class="btn float-end btn-primary">Back</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('users.update',$model->id) }}" method="POST">
                                @csrf
                                @method('PUT')
                                <div class="row">
                                    <div class="mb-3 col">
                                        <label for="name" class="form-label">Name</label>
                                        <input type="text" class="form-control" id="name" name="name" value="{{ $model->name ?? old('name') }}">
                                        @error('name')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col  mb-3">
                                    <label for="email" class="form-label">Email</label>
                                        <input type="text" class="form-control" id="email" name="email" value="{{ $model->email ?? old('email') }}">
                                        @error('email')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col mb-3">
                                        <label for="password" class="form-label">Password</label>
                                        <input type="password" class="form-control" id="password" name="password" value="{{ $model->password ?? old('password') }}">
                                        @error('password')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col mb-3">
                                    <label for="status" class="form-label">Status</label>
                                        <select class="form-control" name="status" id="status">
                                            <option value="">select status</option>
                                            <option {{ $model-> status == 1 ? 'selected' : ''}} value="1">Active</option>
                                            <option {{ $model-> status == 0 ? 'selected' : ''}} value="0">Inactive</option>
                                        </select>
                                        @error('status')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main><!-- End #main -->
@endsection

