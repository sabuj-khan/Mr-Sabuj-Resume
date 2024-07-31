<?php

namespace App\Http\Controllers;

use App\Models\Skill;
use App\Models\Social;
use App\Models\Project;
use App\Models\Language;
use App\Models\Education;
use App\Models\Experience;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProjectController extends Controller
{


    public function projectPageAction(Request $request){
        $seo = DB::table('seoproperties')->where('pageName', '=', 'projects')->first();
        return view("pages.project", ['seo' => $seo]);
    }
    


   
    public function projectAction(Request $request){
        $result = DB::table("projects")->get();

        return $result;
    }


    public function getAllProjects(Request $request){
        $result = Project::all();

        return $result;
        
    }


    public function getAllLanguages(Request $request){
        $result = Language::all();

        return  $result;
    }


    public function getAllkills(Request $request){
        $result = Skill::all();

        return  $result;
    }



    public function getAllEducation(Request $request){
        $result = Education::all();

        return  $result;
    }

    
    public function getexperiencssAction(Request $request){
        $result = Experience::all();

        return $result;
    }

    public function getsocialAction(Request $request){
        $result = Social::all();

        return $result;
    }
    

}
