<html>
 <head>
  <title>Add Course</title>
 </head>
<body>
<?php  

    $area = $_POST['area'];
    $title = $_POST['courseTitle'];
    $descrip = $_POST['description'];

    $conn = new mysqli("localhost", "root", "", "capstone");

    if(empty($_POST['area'])){
        die('Connection Failed : '.$conn->connect_error);
    }
    else{
        $stmt = $conn->prepare("INSERT into addcourse(area, title, descrip) values(?, ?, ?)");
        $stmt->bind_param("sss", $area, $title, $descrip);
        $stmt->execute();
    }

    mysqli_close($conn);
 ?>

    <script>location.href="/cs490-capstone/sugcourses.php#";</script>       <!-- takes to suggested courses page after executed -->
    
 </body>
</html> 