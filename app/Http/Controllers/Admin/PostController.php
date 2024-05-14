<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Post::all();
        //select * from posts
        return view('admin.posts.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::all();
        return view('admin.posts.create',compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'content' => 'required',
            'image' => 'required',
            'category_id' => 'required'
        ]);
        $model = new Post();
        $model->fill($request->except('image'));
        $model->slug = $this->renderSlug($request->title);
        if($request->hasFile('image')){
            $image = Storage::putFile('images/posts/', $request->file('image'));
            $model->image = $image;
        }
        $model->save();
        return redirect()->route('posts.index')->with('success','Post created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $model = Post::find($id);
        $categories = Category::all();
        return view('admin.posts.edit',compact('model','categories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'title' => 'required',
            'content' => 'required',
            'category_id' => 'required'
        ]);
        $model = Post::find($id);
        $model->fill($request->except('image'));
        $model->slug = $this->renderSlug($request->title);
        if($request->hasFile('image')){
            if($model->image){
                Storage::delete('images/posts/'.$model->image);
            }
            $image = Storage::putFile('images/posts/', $request->file('image'));
            $model->image = $image;
        }
        $model->save();
        return redirect()->route('posts.index')->with('success','Post updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $model = Post::find($id);
        $model->delete();
        if($model->image){
            Storage::delete('images/posts/'.$model->image);
        }
        return redirect()->route('posts.index')->with('success','Post deleted successfully');
    }

    public function renderSlug($name)
    {
        $slug = Str::slug($name);
        return $slug;
    }
}
