<style>
    header,footer{
        display: none;
    }
    main{
        margin: 2em 0;
    }
</style>

<main class="page-content" id="login">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-12 col-sm-12"></div>
            <div class="col-lg-4 col-md-12 col-sm-12">
                <h3 class="text-center" style="margin-bottom: 2em;">LOGIN IF YOU HAVE AN ACCOUNT ALREADY</h3>

                <form action="{{ url("customer-login") }}" method="POST"> 
                    <div class="mb-3">
                      <label for="exampleInputEmail1" class="form-label">Email address</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                      <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                    </div>
                    <div class="mb-3">
                      <label for="exampleInputPassword1" class="form-label">Password</label>
                      <input type="password" class="form-control" id="exampleInputPassword1">
                    </div>
                    <div class="mb-3 form-check">
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                      <label class="form-check-label" for="exampleCheck1">Check me out</label>
                    </div>
                    <button type="submit" class="btn btn-success w-100">login</button>
                  </form>

                  <p class="auth-prompt">Dont have an account? <a href="{{ url("register") }}">Register here</a></p>

            </div>
            <div class="col-lg-4 col-md-12 col-sm-12"></div>
        </div>
    </div>
</main>