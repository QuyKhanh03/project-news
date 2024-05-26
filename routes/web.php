<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\InfoController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('blogs', [BlogController::class, 'index'])->name('blogs');

Route::get('blog/{slug}', [BlogController::class,'show'])->name('blog');
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

Route::get('/admin', function () {
    return view('admin.dashboard.index');
})->middleware(['auth', 'verified'])->name('admin');

Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'verified']], function () {
    Route::resource('categories', CategoryController::class);
    Route::resource('posts', PostController::class);
    Route::resource('users', UserController::class);
    Route::resource('info', InfoController::class);
});

Route::get('demo', function () {
    return view('client.display.app');
})->name('demo');

