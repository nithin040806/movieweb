<?php 
session_start();
include("connection.php");
include("function.php");
if($_SERVER['REQUEST_METHOD']=="POST"){
  $username=$_POST['username'];
  $mail=$_POST['email'];
  $userpassword=$_POST['userpassword'];
  if(!empty($username) && !empty($userpassword) && !empty($mail) && !is_numeric($username))
  {
  $user_id = random_num(20);
  $query="INSERT INTO users(userid,username,userpassword,email) values('$user_id','$username','$userpassword','$mail')";
  mysqli_query($con,$query);
  header("Location:login.php");
  die;
  }
}
?>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>signin page</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
      <style>
        @import url('https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700|Poppins:400,500&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  user-select: none;
}
.bg-img{
  background: url('https://assets.nflxext.com/ffe/siteui/vlv3/855ed6e2-d9f1-4afd-90da-96023ec747c3/85eb5b91-25ed-4965-ace9-ba8e4a0ead8d/IN-en-20230828-popsignuptwoweeks-perspective_alpha_website_medium.jpg');
  height: 100vh;
  background-size: cover;
  background-position: center;
}
.bg-img:after{
  position: absolute;
  content: '';
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background: rgba(0,0,0,0.7);
}
.content{
  position: absolute;
  top: 50%;
  left: 50%;
  z-index: 999;
  text-align: center;
  padding: 60px 32px;
  width: 370px;
  border-radius: 30px;
  transform: translate(-50%,-50%);
  background: rgba(255,255,255,0.04);
  box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
}
.content header{
  color: white;
  font-size: 33px;
  font-weight: 600;
  margin: 0 0 35px 0;
  font-family: 'Montserrat',sans-serif;
}
.content header::first-letter{
    color:#2691d9;
}
.field{
  position: relative;
  height: 45px;
  width: 100%;
  margin-top:20px;
  border-radius: 10px;
  display: flex;
  background: rgba(255,255,255,0.94);
}
.field span{
  color: #222;
  width: 40px;
  line-height: 45px;
}
.field input{
  height: 100%;
  width: 100%;
  background: transparent;
  border: none;
  outline: none;
  color: #222;
  font-size: 16px;
  font-family: 'Poppins',sans-serif;
}
.space{
  margin-top: 16px;
}
.show{
  position: absolute;
  right: 13px;
  font-size: 13px;
  font-weight: 700;
  color: #222;
  display: none;
  cursor: pointer;
  font-family: 'Montserrat',sans-serif;
}
.show2{
  position: absolute;
  right: 13px;
  font-size: 13px;
  font-weight: 700;
  color: #222;
  display: none;
  cursor: pointer;
  font-family: 'Montserrat',sans-serif;
}
.pass-key:valid ~ .show{
  display: block;
}
.field input[type="submit"]{
  background: #3498db;
  border: 1px solid #2691d9;
  color: white;
  font-size: 18px;
  letter-spacing: 1px;
  font-weight: 600;
  cursor: pointer;
  border-radius: 10px;
  font-family: 'Montserrat',sans-serif;
}
.field input[type="submit"]:hover{
  background: #3498db;
  border-radius: 10px;
}
.signup{
  font-size: 15px;
  color: white;
  font-family: 'Poppins',sans-serif;
}
.signup a{
  color: #3498db;
  text-decoration: none;
}
.signup a:hover{
  text-decoration: underline;
}
.login{
    visibility:hidden;
}
      </style>
   </head>
   <body>
      <div class="bg-img">
         <div class="content">
            <header>Signup</header>
            <form action="#" method="post">
               <div class="field">
                  <span class="fa fa-user"></span>
                  <input type="text" required placeholder="User name" name="username">
               </div>
               <div class="field">
                  <span class="fa fa-mail">@</span>
                  <input type="text" required placeholder="mail" name="email">
               </div>
               <div class="field space">
                  <span class="fa fa-lock"></span>
                  <input type="password" class="pass-key" required placeholder="Password" name="userpassword">
                  <span class="show">SHOW</span>
               </div>
               <div class="field space">
                  <span class="fa fa-lock"></span>
                  <input type="password" class="pass-key2" required placeholder="Confirm Password" name="userconfirmpassword">
                  <span class="show2">SHOW</span>
               </div>
               <div class="field">
                  <input type="submit" value="SIGNUP">
               </div>
            </form>
            <div class="login">
               Or login with
            </div>
            <div class="signup">
               Already have an account?
               <a href="login.php">Login</a>
            </div>
         </div>
      </div>
      <script>
         const pass_field = document.querySelector('.pass-key');
         const showBtn = document.querySelector('.show');
         showBtn.addEventListener('click', function(){
          if(pass_field.type === "password"){
            pass_field.type = "text";
            showBtn.textContent = "HIDE";
            showBtn.style.color = "#3498db";
          }else{
            pass_field.type = "password";
            showBtn.textContent = "SHOW";
            showBtn.style.color = "#222";
          }
         });
      </script>
   </body>
</html>