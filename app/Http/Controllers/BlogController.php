<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index()
    {
        $data = Post::all();
        return view('client.blog', compact('data'));
    }
    public function show($slug)
    {
        $model = Post::where('slug', $slug)->first();
        $categories = Category::all();
        $blogRelated = Post::where('category_id', $model->category_id)->where('id', '!=', $model->id)->get();
        return view('client.blog-detail', compact('model', 'blogRelated', 'categories'));
    }

}
