<!DOCTYPE html>
<html lang="en">
<head>
  <title>Courses</title>
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
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v9.0" nonce="lyvpSC5L"></script>
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
        <li class="active"><a href="/cs490-capstone/courses.html#">Courses</a></li> <!-- current page -->
        <li><a href="/cs490-capstone/faculty.php#">Faculty</a></li>
        <li><a href="/cs490-capstone/resources.html#">Resources</a></li>
      </ul>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> <!-- login / register -->
      </ul>
    </div>
  </div>
</nav>
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav"> </div>
    <div class="col-sm-8 text-center"> 
      <h1>Course List</h1>
      <h3>Mathematics & Computer Science Department</h3>
      <h3>Mathematics</h3>
        <hr style="height:3px;border-width:0;color:black;background-color:black">
    <h4>Course Details</h4>
        <hr style="height:3px;border-width:0;color:black;background-color:black">
    <?php 

        $conn = mysqli_connect("localhost", "root", "", "capstone");
        
        if(! $conn){
            die("Connection failed : ". mysqli_connect_error());
        }
        
        $courseNum = htmlspecialchars($_GET["courseNum"]);
        $sql = "SELECT * FROM mathcourses WHERE courseNum='" . $courseNum . "'"; /* getting selected math course details from db */
        $result = $conn->query($sql);
            
        echo "<table border='1'>
              <tr>
              <th>Course Number</th>
              <th>Course Name</th>
              <th>Credits</th>
              <th>Description</th>
              </tr>";
        
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
            echo "<td>" . $row['courseNum'] . "</td>";
            echo "<td>" . $row['courseName'] . "</td>";
            echo "<td>" . $row['credits'] . "</td>";
            echo "<td>" . $row['detail'] . "</td>";
            echo "</tr>";
        }
        
        echo "</table>";
        
        mysqli_close($conn);
    
    ?>
    </div>
    <div class="col-sm-2 sidenav"> </div>
  </div>
</div>
<footer class="container-fluid text-center">
    <p><a href="/cs490-capstone/mathcourses.php#" title="Go to Math Courses">Back to Math Courses</a></p>
    <h5>
    <p>2300 Adams Avenue Scranton, PA 18509</p>
    <p>570-348-6211 | toll free: 1-TO-MARYWOOD</p>
    </h5>
    <div> <!-- socials -->
        <div class="fb-like" data-href="https://www.facebook.com/marywoodu/" data-width="" data-layout="button" data-action="like" data-size="large" data-share="true"></div>
        <div class position="relative"><a href="https://twitter.com/MarywoodU?ref_src=twsrc%5Etfw" class="twitter-follow-button" data-size="large" data-show-screen-name="false" data-show-count="false">Follow @MarywoodU</a></div><script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    </div>
</footer>
</body>
</html>