<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\KundeController;


// Register the CRUD routes for the Product model
Route::apiResource('kunden', KundeController::class);  // Define API resource routes

