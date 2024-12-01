<?php 
session_start();
include("connection.php");
include("function.php");
$user_data=check_login($con);
$id=$user_data['userid'];
$movieid=$_SESSION['movieid'];
$sql="INSERT into watchlist(userid,movieid) values('$id','$movieid')";
mysqli_query($con,$sql);
$a=$_SESSION['pageurl'];
header("Location:$a");
die;
?>