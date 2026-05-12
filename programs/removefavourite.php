<?php  
session_start();
include("connection.php");
include("function.php");
$user_data=check_login($con);
$a=$user_data['userid'];
$movieid=$_SESSION['movieid'];
$stmt=$con->prepare("DELETE from favourite where userid=? AND movieid=?");
$stmt->bind_param("ss",$a,$movieid);
$stmt->execute();
$a=$_SESSION['pageurl'];
header("Location:$a");
?>