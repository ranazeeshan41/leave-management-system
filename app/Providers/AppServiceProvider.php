<?php

namespace App\Providers;

use Illuminate\Support\Facades\Blade;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Blade::directive('canEdit', function ($expression) {
            return "<?php if(auth()->user()->can('edit-own-user', $expression) || auth()->user()->can('admin-access')): ?>";
        });

        Blade::directive('endcanEdit', function () {
            return '<?php endif; ?>';
        });
    }
}
