<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DepartmenController;
use App\Http\Controllers\EmployeeControler;
use App\Http\Controllers\PositionController;
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

Route::get('/', [DashboardController::class, 'index'])->name('dashboard');

Auth::routes();

// department routing
Route::resource('/department', DepartmenController::class);

// position routing
Route::resource('/position', PositionController::class);

//  employee routin
Route::resource('/employee', EmployeeControler::class);
