<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function homePageAction(Request $request){
        $seo = DB::table('seoproperties')->where('pageName', '=', 'home')->first();
        return view("pages.home", ['seo' => $seo]);
    }


    public function heroSectionAction(Request $request){
        $result = DB::table("heroproperties")->first();

        return $result;

    }

    public function aboutAction(Request $request){
        $result = DB::table("abouts")->first();

        return $result;
    }

    

    public function socialAction(Request $request){
        $result = DB::table("socials")->first();

        return $result;
    }





}
