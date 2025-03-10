<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PokemonController;

Route::get('/', [PokemonController::class, 'index']);
Route::get('/pokemon', [PokemonController::class, 'index']);
Route::get('/pokemon/list', [PokemonController::class, 'index'])->name('pokemon.index');
Route::get('/pokemon/all', [PokemonController::class, 'getAllPokemons']);

Route::get('/pokemon/search', [PokemonController::class, 'search'])->name('pokemon.search');
Route::get('/pokemon/sort/{criteria}', [PokemonController::class, 'sort'])->name('pokemon.sort');

Route::post('/pokemon/delete', [PokemonController::class, 'destroy'])->name('pokemon.delete');

Route::get('/pokemon/create', [PokemonController::class, 'create'])->name('pokemon.create');
Route::post('/pokemon', [PokemonController::class, 'store'])->name('pokemon.store');

Route::get('/pokemon/{id}/edit', [PokemonController::class, 'edit'])->name('pokemon.edit');
Route::post('/pokemon/{id}/update', [PokemonController::class, 'update'])->name('pokemon.update');