<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Merchant extends Model
{


    protected $fillable = [
        'name','phone','image','category_id'
    ];
    
    public function category(){
       
        return $this->belongsTo('App\Category');
        
    }

    public function marker()
    {
        return $this->hasOne('App\Marker');
    }

    
}
