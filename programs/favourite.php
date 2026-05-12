<?php 
session_start();
include("connection.php");
include("function.php");
$user_data=check_login($con);
$id=$user_data['userid'];
$movieid=$_SESSION['movieid'];
$stmt=$con->prepare("INSERT into favourite(userid,movieid) values(?,?)");
$stmt->bind_param("ss",$id,$movieid);
$stmt->execute();
$a=$_SESSION['pageurl'];
header("Location:$a");
die;
?>