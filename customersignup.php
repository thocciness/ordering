<html>
<head>
    <title> Guest Signup | The Resturant </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/managersignup.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

  <body>


    <button onclick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
    
  
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">The Resturant</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li  ><a href="index.php">Home</a></li>
         
            <li><a href="contact.php">Contact</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Registration <span class="caret"></span> </a>
                <ul class="dropdown-menu">
              <li> <a href="customersignup.php"> User Registration</a></li>
              <li> <a href="managersignup.php"> Manager Registration</a></li>
    
            </ul>
            </li>

            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li> <a href="customerlogin.php"> User Login</a></li>
              <li> <a href="managerlogin.php"> Manager Login</a></li>
      
            </ul>
            </li>
          </ul>
        </div>

      </div>
    </nav>

    <div style="display: flex;"class="sum">
    <div style="width: 40%;"class="left">
    <div style="position: relative; top: 150px; text-align: center;" >
     <h1 style="font-size: 40px;">Welcome to </h1>
     <h1 style="font-size: 50px;"><span class="edit"> The Resturant </span></h1>
     <br>
      <p style="font-size: 20px;">Start creating an account!</p>
    </div>
  </div>

  <div style="width:60%; margin-left: 100px; margin-right: 100px;" class="right">
      <div style="margin-top: 40px;" class="panel panel-primary">
        <div class="panel-heading"> Create Acount </div>
        <div class="panel-body">
          
        <form role="form" action="customer_registered_success.php" method="POST">
         
          <div class="row1">
            <label for="fullname"><span class="text-danger" style="margin-right: 5px;">*</span> Full Name: </label>
            <div class="input-group">
              <input class="form-control" id="fullname" type="text" name="fullname" placeholder="" required="" autofocus="">
              <span class="input-group-btn">
                <label class="btn btn-primary"><span class="glyphicon glyphicon-user" aria-hidden="true"></label>
            </span>
              </span>      
          </div>
        </div>

        <div class="row1">
            <label for="username"><span class="text-danger" style="margin-right: 5px;">*</span> Username: </label>
            <div class="input-group">
              <input class="form-control" id="username" type="text" name="username" placeholder="" required="">
              <span class="input-group-btn">
                <label class="btn btn-primary"><span class="glyphicon glyphicon-user" aria-hidden="true"></label>
            </span>
              </span>       
          </div>
        </div>

        <div class="row1">
            <label for="email"><span class="text-danger" style="margin-right: 5px;">*</span> Email: </label>
            <div class="input-group">
              <input class="form-control" id="email" type="email" name="email" placeholder="" required="">
              <span class="input-group-btn">
                <label class="btn btn-primary"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></label>
            </span>
              </span>         
          </div>
        </div>

        <div class="row1">
            <label for="contact"><span class="text-danger" style="margin-right: 5px;">*</span> Phone Number: </label>
            <div class="input-group">
              <input class="form-control" id="contact" type="text" name="contact" placeholder="" required="">
              <span class="input-group-btn">
                <label class="btn btn-primary"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span></label>
            </span>       
          </div>
        </div>

        <div class="row1">
            <label for="address"><span class="text-danger" style="margin-right: 5px;">*</span> Address: </label>
            <div class="input-group">
              <input class="form-control" id="address" type="text" name="address" placeholder="" required="">
              <span class="input-group-btn">
                <label class="btn btn-primary"><span class="glyphicon glyphicon-home" aria-hidden="true"></label>
            </span>
              </span>          
          </div>
        </div>

        <div class="row1">
            <label for="password"><span class="text-danger" style="margin-right: 5px;">*</span> Password: </label>
            <div class="input-group">
              <input class="form-control" id="password" type="password" name="password" placeholder="" required="">
              <span class="input-group-btn">
                <label class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></label>
            </span>        
          </div>
        </div>

        

        <div class="row">
          <div style="margin-top: 20px;text-align: center;">
            <button class="btn btn-primary" type="submit">Submit</button>
            <br><br>
            <label style="margin-left: 5px;"><a href="customerlogin.php">Already have an account? Login here.</a></label>
          </div>
        </div>
        </form>

        </div>
        
      </div>
      
    </div>
    </div>
    </body>
</html>