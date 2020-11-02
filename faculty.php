<!DOCTYPE html>
<html lang="en">
<head>
  <title>Faculty</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--Bootstrap Template from w3school-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!--Google API font library-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@800&display=swap">
  <link rel="stylesheet" href="mustyle.css">
</head>
<body>
<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v8.0" nonce="jkv1E5vm">
    </script>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">
		<img width="130px" height="70px" src="bigM.png" style="position:relative;top:-22px">
	  </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="/cs490-capstone/index.html#">Home</a></li>
        <li><a href="/cs490-capstone/courses.html#">Courses</a></li>
        <li class="active"><a href="/cs490-capstone/faculty.html#">Faculty</a></li>
        <li><a href="/cs490-capstone/resources.html#">Resources</a></li>
      </ul>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="/cs490-capstone/signin.html#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav"> </div>
    <div class="col-sm-8 text-center"> 
      <h1>Faculty</h1>
      <h3>Mathematics & Computer Science Department</h3>
        <hr style="height:3px;border-width:0;color:black;background-color:black">
    <?php

        $conn = mysqli_connect("localhost", "root", "", "capstone");
        
        if(! $conn){
            die("Connection failed : ". mysqli_connect_error());
        }

        $sql = "CALL getAllFaculty";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
        
            while($row = $result->fetch_assoc()) {
                $Name = $row["Name"];
                $Email = $row["Email"];
                $Area = $row["Area"];
                $Office = $row["Office"];
                $Phone_Number = $row["Phone_Number"];
            echo $Name . " " . $Email . " " . $Area . " " . $Office . " " . $Phone_Number . "<br>";
          }
        }
    mysqli_close($conn);
    
    ?> 
    </div>
    <div class="col-sm-2 sidenav"> </div>
  </div>
</div>
<footer class="container-fluid text-center">
    <!-- like & share button code -->
    <div class="fb-like" 
         data-href="https://developers.facebook.com/docs/plugins/" 
         data-width="" 
         data-layout="button" 
         data-action="like" 
         data-size="large" 
         data-share="false">
    </div>
    <a href="https://twitter.com/MarywoodU?ref_src=twsrc%5Etfw" class="twitter-follow-button" data-size="large" data-show-screen-name="false" data-show-count="false">Follow @MarywoodU</a><script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
</footer>
</body>
</html>