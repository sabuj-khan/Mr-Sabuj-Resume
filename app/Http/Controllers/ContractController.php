<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ContractController extends Controller
{

    public function contractPageAction(Request $request){
        $seo = DB::table('seoproperties')->where('pageName', '=', 'contact')->first();
        return view("pages.contact", ['seo' => $seo]);
    }
    
    public function contractAction(Request $request){
        $fullName = $request->input('fullName');
        $email = $request->input('email');
        $phone = $request->input('phone');
        $message = $request->input('message');

        DB::table('contacts')->insert([
            "fullName" => $fullName,
            "email" => $email,
            "phone" => $phone,
            "message" => $message,
        ]);

        return response()->json([
            'status' => 'Success',
            'message' => 'Message has been sent successfully'
        ]);
    }
}
