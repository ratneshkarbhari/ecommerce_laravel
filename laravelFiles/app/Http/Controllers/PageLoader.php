<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PageLoader extends Controller
{


    private function public_page_loader($page,$data)
    {
        
        echo view("templates.header",$data);
        echo view("pages.".$page,$data);
        echo view("templates.footer",$data);
        
    }

    public function home()
    {
        
        $data = [

            "title" => "Tagline"

        ];

        $this->public_page_loader("home",$data);

    }

    public function login()
    {
        
        
        $data = [

            "title" => "Login"

        ];

        $this->public_page_loader("login",$data);

    }

    public function register()
    {
        
        
        $data = [

            "title" => "Register"

        ];

        $this->public_page_loader("register",$data);

    }


}
