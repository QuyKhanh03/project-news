<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index()
    {
        $data = Post::all();
        return view('client.blog', compact('data'));
    }
}
