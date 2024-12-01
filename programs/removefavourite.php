<?php  
session_start();
include("connection.php");
include("function.php");
$user_data=check_login($con);
$a=$user_data['userid'];
$movieid=$_SESSION['movieid'];
$sql="DELETE from favourite where userid=$a AND movieid=$movieid";
mysqli_query($con,$sql);
$a=$_SESSION['pageurl'];
header("Location:$a");
?>