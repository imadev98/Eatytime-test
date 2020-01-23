<?php

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

Route::get('/', function () {
    return view('welcome');
});

$router->get('/showM/{id}', 'TestController@showMerch');
$router->get('/show', 'TestController@showCatg');
$router->post('/show', 'TestController@login');

$router->post('/store', 'TestController@storeCatg');

$router->post('/storeM', 'TestController@storeMerch');

$router->post('/storeI', 'TestController@storeImage');

$router->post('/storeIM', 'TestController@storeImageM');
$router->get('/search/{name}/{id}', 'TestController@search');



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
