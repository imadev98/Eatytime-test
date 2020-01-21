<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Marker extends Model
{
    public function merchant()
    {
        return $this->belongsTo('App\Merchant');
    }
}
