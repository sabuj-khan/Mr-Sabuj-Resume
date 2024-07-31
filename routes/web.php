<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ResumeController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\ContractController;


// Route::get('/', function () {
//     return view('welcome');
// });

// Page Routing

Route::get('/', [HomeController::class, 'homePageAction']);
Route::get('/resume', [ResumeController::class,'resumeAction']);
Route::get('/projects', [ProjectController::class, 'projectPageAction']);
Route::get('/contact', [ContractController::class, 'contractPageAction']);


// Routing for Javascript and Ajax calling

Route::get('/heroSection', [HomeController::class, 'heroSectionAction']);
Route::get('/about', [HomeController::class, 'aboutAction']);
Route::get('/social', [HomeController::class, 'socialAction']);

Route::get('/resumeLink', [ResumeController::class, 'resumeLinkAction']);
Route::get('/experiences', [ResumeController::class, 'experienceAction']);
Route::get('/education', [ResumeController::class, 'educationAction']);
Route::get('/skill', [ResumeController::class, 'skillAction']);
Route::get('/language', [ResumeController::class, 'languageAction']);
Route::get('/project', [ProjectController::class, 'projectAction']);
Route::post('/contract', [ContractController::class, 'contractAction']);


// test API using model
Route::get('/getprojects', [ProjectController::class, 'getAllProjects']);
Route::get('/getlanguages', [ProjectController::class, 'getAllLanguages']);
Route::get('/getskill', [ProjectController::class, 'getAllkills']);
Route::get('/geteducations', [ProjectController::class, 'getAllEducation']);
Route::get('/getexperiencss', [ProjectController::class, 'getexperiencssAction']);
Route::get('/getsocial', [ProjectController::class, 'getsocialAction']);
