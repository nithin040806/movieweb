<?php 
function check_login($con){
 if(isset($_SESSION['userid'])){
    $id=$_SESSION['userid'];
    $stmt=$con->prepare("SELECT * FROM users WHERE userid=? limit 1");
    $stmt->bind_param("s",$id);
    $stmt->execute();
    $result=$stmt->get_result();
    if($result && mysqli_num_rows($result)>0){
        $userdata=mysqli_fetch_assoc($result);
        return $userdata;
    }
    header("Location: login.php");
	die;
 }
}
function random_num($length)
{

	$text = "";
	if($length < 5)
	{
		$length = 5;
	}

	$len = rand(4,$length);

	for ($i=0; $i < $len; $i++) { 
		# code...

		$text .= rand(0,9);
	}

	return $text;
}
?>