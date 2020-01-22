<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use JWTAuth;
use Jenssegers\Agent\Agent;
use App\Models\JwtToken;
use Illuminate\Http\Request;
use App\User;
use App\Category;
use App\Merchant;
use App\Models\Role;
use Crypt;
use Hash;
use Mail;
use Carbon\Carbon;
use Validator;

class TestController extends Controller
{


  private $guard;

    public function __construct()
    {

        $this->guard = \Auth::guard('api');
    }

    public function showCatg(){
     // for($i=8 ; $i<15 ; $i++){
        $roles = Category::all();
        //echo response()->json(['id'=>$i,'name'=>$roles]) ;
    //  }
    $data = array();

      foreach ($roles as $role) {
        
        $temp = array();
        $temp['catg_id']=$role->id;
        $temp['path']=$role->image;
        $temp['name_catg']=$role->name;
        $hi = Category::find($role->id)->merchant()->select('name')->get();
        $temp['merch']=$hi;
        array_push($data,$temp);
    
    }
    return response()->json($data);
    }
    public function showMerch(Request $request,$id){
      
      $merch_catg = Merchant::where('category_id',$id)->get();
     return response()->json($merch_catg);
       
     }

     public function search(Request $request,$name,$id){
      
      $merch_catg = Merchant::where('name', 'LIKE', '%' . $name . '%')->where('category_id',$id)->get();
      
      return response()->json($merch_catg);
     }

     public function storeMerch()
     {
         //if (request()->has('image')) {
          $category_id = Category::select('id')->where('name',request()->category)->first();
             Merchant::create([
               'name' => request()->name,
               'phone'=> request()->phone,
               'category_id'=> $category_id->id,

              //   'image' => request()->image->store('uploads', 'public'),
            ]);
        // }
         
         return 'hello';
     }

     public function storeImage(){
        if (request()->has('image')) {
          $category_id = Category::select('id')->where('name',request()->category)->first();
             $category = Category::find($category_id->id)->update([
                'image' => request()->image->store('uploads', 'public'),
            ]);
         }
         $category->save();

        return ' thanks ';
     }

     public function storeImageM(){
      if (request()->has('image')) {
        $merchant_id = Merchant::select('id')->where('name',request()->name)->first();
           $merchant = Merchant::find($merchant_id->id)->update([
              'image' => request()->image->store('uploads', 'public'),
          ]);
       }
       

      return ' thanks ';
   }

     public function storeCatg()
     {
         
         $table = Category::create([
          'name' => request()->name,
         ]);
         
         return 'all set up';
     }

     public function index()
    {
    return csrf_token(); 
    }

    
    
    public function doing(Request $request)
    {	
        
      if(is_numeric($request->get('email'))){
        $credentials =  ['phone'=>$request->get('email'),'password'=>$request->get('password')];
      }else{
        $credentials = request(['email', 'password']);
      }

        
        if(empty(request('email')) || empty(request('password'))  ){
            return response()->json(['success'=>false,'message' => 'both email and password required'], 401);
        }
        if (! $token = JWTAuth::attempt($credentials)) {
          return response()->json(['status'=>false,'message' => 'Invalid credentials'], 401);
      }
        // if ( ! $token = $this->guard->attempt($request->only(['email', 'password']))) {
        //  return response()->json(['success'=>false,'message' => 'Invalid credentials'], 401);  
         //   }
      //  if ( ! $token = $this->guard->attempt($request->only(['email', 'password']))) {
       //   return $this->setStatusCode(Response::HTTP_UNAUTHORIZED)->respond(['message' => 'Invalid email or password.']);
    //  }


    return response()->json(['success'=>true ,'api_token'=> $token]);
  }
      //  $user=JWTAuth::user();
        

      //// if($user->email_verified_at==null){
         //   return response()->json(['status'=>false,'message' => 'Email not verfied, verify your email first.'], 401);   
     //   }

     //   if($user->is_active==0){
       //     return response()->json(['status'=>false,'message' => 'You are deactivated, kindly contact admin.'], 401);   
     //   }

    //    $this->authenticated($request,$user,$token);
    //    return $this->respondWithToken($token);
    //}



        

        

    }

