<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{$title}} | Ecommerce</title>
    <link rel="stylesheet" href="{{ asset("css/bootstrap.min.css"); }}">
    <link rel="stylesheet" href="{{ asset("css/app.min.css"); }}">
</head>
<body>
    {{-- Public Header --}}
    <header id="desktop">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
              <a class="navbar-brand" href="{{ url("/") }}"><img src="{{ asset("images/logo.png")}}" id="siteLogo" class="w-100"></a>
          </div>
          <div class="col-lg-7">  
              <form action="{{ url("universal-product-search") }}" method="get" accept-charset="utf-8">
                  @csrf
                  <div class="form-group">
                  <input style="margin: 1.0rem 0 0 0; border: 1px solid black; height: 2.5em;" placeholder="Find what you love" type="search" name="universal-search" id="universal-search" class="form-control">
                  </div>
              </form>                
          </div>
          <div class="col-lg-2">
              
              <nav id="top-right-nav" style="text-align: right; margin-top:1em;">


              
                  <a class="nav-link d-inline" href="{{ url("login"); }}"><img src="{{ asset("images/user.svg"); }}" width="30px" height="30px"></a>

                  

              
                  <a class="nav-link d-inline" href="{{ url("cart") }}"><img src="{{ asset("images/shopping-bag.svg"); }}" width="30px" height="30px"></a>
              </nav>

          </div>
      </div>
      </div>
      <nav class="navbar navbar-expand-lg navbar-light bg-light" id="mainNavbar">
          <div class="container">
              
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarSupportedContent">

                  <ul class="navbar-nav mr-auto">
                      
                      <li class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              COLLECTIONS
                          </a>
                          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                                  <a class="dropdown-item" href="https://rickagauba.com/collection/indian-summer">Indian Summer</a>
                                                                  <a class="dropdown-item" href="https://rickagauba.com/collection/festive-edit">Festive Edit</a>
                                                                  <a class="dropdown-item" href="https://rickagauba.com/collection/heyy-there-sunshine">Heyy There Sunshine</a>
                                                                  <a class="dropdown-item" href="https://rickagauba.com/collection/melange">Melange</a>
                                                                  <a class="dropdown-item" href="https://rickagauba.com/collection/collection-two">Be You</a>
                                                          </div>
                      </li>

                      <li class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              STYLES
                          </a>
                          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                               
                              <a class="dropdown-item" href="https://rickagauba.com/style/straight-cuts">Straight Cuts</a>
                               
                              <a class="dropdown-item" href="https://rickagauba.com/style/pant-style-fusion-wear">Pant Style</a>
                               
                              <a class="dropdown-item" href="https://rickagauba.com/style/indian-lehenga">Lehenga</a>
                               
                              <a class="dropdown-item" href="https://rickagauba.com/style/drape-skirt">Drape Style</a>
                                                          </div>
                      </li>
                      
                      
                  </ul>

                  <ul class="navbar-nav " style="margin-left: auto;">
                      
                      <li class="nav-item">
                          <a class="nav-link nav-link-dark" href="https://rickagauba.com/">HOME</a>
                      </li>
                      
                      <li class="nav-item d-none">
                          <a class="nav-link nav-link-dark" href="https://rickagauba.com/shop">SHOP</a>
                      </li>

                      

                      <li class="nav-item">
                          <a class="nav-link nav-link-dark" href="https://rickagauba.com/about">ABOUT</a>
                      </li>

                      <li class="nav-item">
                          <a class="nav-link nav-link-dark" href="https://rickagauba.com/contact">CONTACT</a>
                      </li>

                  </ul>
                  
              </div>
          </div>
      </nav>

  </header>