<?php

namespace App\Providers;

use Illuminate\Support\Facades\Route;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        // Register application services (if needed)
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // Load the API routes with appropriate configuration
        Route::prefix('api') // Define the 'api' prefix
            ->middleware('api') // Apply the 'api' middleware group
            ->namespace('App\\Http\\Controllers') // Use the controllers in the 'App\\Http\\Controllers' namespace
            ->group(base_path('routes/api.php')); // Specify the path to your API routes file
    }
}
