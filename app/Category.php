<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{

    protected $fillable = [
        'name','image'
    ];

    public function merchant(){
       
         return $this->hasMany('App\Merchant');
         
    }
}
