<?php

use App\Http\Controllers\PageLoader;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [PageLoader::class,"home"]);
Route::get("/login",[PageLoader::class,"login"]);
Route::get("/register",[PageLoader::class,"register"]);