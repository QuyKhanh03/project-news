<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {


    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useBootstrap();

        $getPosts = function () {
            return \App\Models\Post::query()->orderBy('id', 'desc')->paginate(10);
        };
        View::composer('*', function ($view) use ($getPosts) {
            $view->with('getPosts', $getPosts());
        });
    }
}
