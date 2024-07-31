<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ResumeController extends Controller
{
    public function resumeAction(Request $request){
        $seo = DB::table('seoproperties')->where('pageName', '=', 'resume')->first();
        return view("pages.resume", ['seo' => $seo]);
    }


    public function resumeLinkAction(Request $request){
        $result = DB::table("resumes")->first();

        return $result;
    }
    public function experienceAction(Request $request){
        $result = DB::table("experiences")->get();

        return $result;
    }

    public function educationAction(Request $request){
        $result = DB::table("educations")->get();

        return $result;
    }

    public function skillAction(Request $request){
        $result = DB::table("skills")->get();

        return $result;
    }

    public function languageAction(Request $request){
        $result = DB::table("languages")->get();

        return $result;
    }




}
