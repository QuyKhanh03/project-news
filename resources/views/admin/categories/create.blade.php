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
                                    <h4>Categories</h4>
                                </div>
                                <div class="col ">
                                    <a href="{{ route('categories.index') }}" class="btn float-end btn-primary">Back</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('categories.store') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="mb-3 col">
                                        <label for="name" class="form-label">Name</label>
                                        <input type="text" class="form-control" id="name" name="name" value="{{ old('name') }}">
                                        @error('name')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col"></div>
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

