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
                                        Cấu hình thông tin liên quan
                                    </h4>
                                </div>
                                <div class="col ">
                                    <a href="{{ route('info.create') }}" class="btn float-end btn-primary">
                                        Thêm mới
                                    </a>
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
                                        <th>Name</th>
                                        <th>Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @if($data->count()>0)
                                        @foreach($data as $value)
                                            <tr>
                                                <td>{{ $value->id }}</td>
                                                <td>{!!  $value->name  !!}</td>
                                                <td>
                                                    <a href="{{ route('info.edit', $value->id) }}" class="btn btn-primary btn-sm">Edit</a>
                                                    <form action="{{ route('info.destroy', $value->id) }}" method="POST" style="display: inline-block;">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                            <td colspan="6" class="text-center">No data found</td>
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

