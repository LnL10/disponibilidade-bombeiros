<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DisponibilidadeController;
use App\Http\Controllers\ExportController;

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

Route::get('/disponibilidade/editar', [DisponibilidadeController::class, 'edit'])->name('disponibilidade.editar');
Route::middleware('auth')->put('/disponibilidade/{id}', [DisponibilidadeController::class, 'update'])->name('disponibilidade.update');
Route::middleware('auth')->get('/disponibilidade/main', [DisponibilidadeController::class, 'main'])->name('disponibilidade.main');
Route::middleware('auth')->post('/disponibilidade', [DisponibilidadeController::class, 'store'])->name('disponibilidade.store');
Route::delete('/delete-null-diax', [DisponibilidadeController::class, 'deleteNullDiaX'])->name('disponibilidade.deleteNullDiaX');
Route::middleware('auth','admin')->get('/disponibilidade/all', [DisponibilidadeController::class, 'all'])->name('disponibilidade.all');

Route::get('/export-to-pdf', [ExportController::class,'exportToPdf'])->name('export.to.pdf');




Route::get('/', function () {
    return redirect()->route('login');
});


Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
