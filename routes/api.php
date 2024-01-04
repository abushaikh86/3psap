<?php

use App\Http\Controllers\backend\AccountController;
use App\Http\Controllers\backend\ApiController;
use App\Http\Controllers\backend\OutletController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// admin.outlet
Route::get('/get_outlets', [ApiController::class, 'get_outlets'])->name('admin.get_outlets');
Route::get('/createOutlet/{user_id?}', [ApiController::class, 'createOutlet'])->name('admin.createOutlet');
Route::get('/updateOutlet/{user_id?}/{id}', [ApiController::class, 'updateOutlet'])->name('admin.updateOutlet');
// Route::get('/outlet/delete/{id}', [ApiController::class, 'destroyoutlet'])->name('admin.outlet.delete');


Route::get('/get_companies', [ApiController::class, 'get_companies'])->name('admin.get_companies');
Route::any('/login', [ApiController::class, 'login'])->name('admin.login');
Route::post('/updatePassword', [ApiController::class, 'updatePassword'])->name('admin.updatePassword');
Route::get('/get_dashboard_data', [ApiController::class, 'get_dashboard_data'])->name('admin.get_dashboard_data');
Route::any('/get_user_data', [ApiController::class, 'get_user_data'])->name('admin.get_user_data');


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
