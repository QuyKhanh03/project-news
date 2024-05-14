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
                                    <a href="{{ route('posts.create') }}" class="btn float-end btn-primary">Add New</a>
                                </div>
                            </div>

                            @if(session('success'))
                                <div class="alert alert-success">{{ session('success') }}</div>
                            @endif
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover table-bordered table-categories">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Title</th>
                                        <th>Slug</th>
                                        <th>Image</th>
                                        <th>Category</th>
                                        <th>Created At</th>
                                        <th>Updated At</th>
                                        <th>Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @if($data->count()>0)
                                        @foreach($data as $value)
                                            <tr>
                                                <td>{{ $value->id }}</td>
                                                <td>{{ $value->title }}</td>
                                                <td>{{ $value->slug }}</td>
                                                <td>
                                                    <img src="{{ asset('storage/'.$value->image) }}" alt="{{ $value->name }}" class="img-fluid" style="max-width: 100px;">
                                                </td>
                                                <td>{{ $value->category ? $value->category->name : 'N/A' }}</td>
                                                <td>{{ $value->created_at->format('d M Y') }}</td>
                                                <td>{{ $value->updated_at->format('d M Y') }}</td>
                                                <td>
                                                    <a href="{{ route('posts.edit', $value->id) }}" class="btn btn-primary btn-sm">Edit</a>
                                                    <form action="{{ route('posts.destroy', $value->id) }}" method="POST" style="display: inline-block;">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="8" class="text-center">No data found</td>
                                        </tr>
                                    @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>


    </main><!-- End #main -->

@endsection


