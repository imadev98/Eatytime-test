<?php

namespace App\Http\Controllers;
use App\Category;
use App\Merchant;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function showCatg(){
     // for($i=8 ; $i<15 ; $i++){
        $roles = Category::all();
        //echo response()->json(['id'=>$i,'name'=>$roles]) ;
    //  }
    
    $data = array();

      foreach ($roles as $role) {
        
        $temp = array();
        $temp['name_catg']=$role->name;
        $hi = Category::find($role->id)->merchant()->select('name')->get();
        $temp['merch']=$hi;
        array_push($data,$temp);
    
    }
    return response()->json($data);
      
    }

        

        

    }

