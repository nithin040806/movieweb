<?php 
session_start();
include("connection.php");
$sql2="SELECT m.postercardurl,m.pageurl FROM movies m  inner JOIN languagebridge lb on m.movieid=lb.movieid where lb.languageid=4 ORDER BY `m`.`postercardurl` ASC";
$result2=mysqli_query($con,$sql2);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
       <!-- Google Font -->
       <link href="https://fonts.googleapis.com/css?family=Anton|Cabin|Lato|Fjalla+One|Montserrat|Roboto&display=swap" rel="stylesheet">
   
       <!-- Font Awesome -->
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
   
       <!-- Owl Carousel -->
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
   
       <!-- Custom Style Sheet -->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <style>
       @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
      *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: system-ui;
}

:root{
    /* ===== Colors ===== */
    --sidebar-color: #0a090e;
    --primary-color: #608ead;
    --primary-color-light: #090a0a;
    --toggle-color: #252052;
    --text-color: #707070;

    /* ====== Transition ====== */
    --tran-03: all 0.2s ease;
    --tran-03: all 0.3s ease;
    --tran-04: all 0.3s ease;
    --tran-05: all 0.3s ease;
}



::selection{
    background-color: var(--primary-color);
    color: #fff;
}
body{
    background-color: #0a090e;
}

/* ===== Sidebar ===== */
 .sidebar{
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
    width: 250px;
    padding: 0;
    background:linear-gradient(to right, rgb(2, 2, 8) 0%, rgb(2, 2, 8) 27.59%, rgba(2, 2, 8,0) 95%, rgba(2, 2, 8, 0) 100%);
    transition: var(--tran-05);
    z-index: 100;  
}
.sidebar.close{
    width: 60px;
}

/* ===== Reusable code - Here ===== */
.sidebar li{
    height: 50px;
    list-style: none;
    display: flex;
    align-items: center;
    margin-top: 10px;
}

.sidebar header .image,
.sidebar .icon{
    min-width: 60px;
    border-radius: 6px;
}

.sidebar .icon{
    min-width: 60px;
    border-radius: 6px;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
}

.sidebar .text,
.sidebar .icon{
    color: rgb(212, 197, 197);
    transition: var(--tran-03);
}

.sidebar .text{
    font-size: 17px;
    font-weight: 500;
    white-space: nowrap;
    opacity: 1;
}
.sidebar.close .text{
    opacity: 0;
}
/* =========================== */

.sidebar header{
    position: relative;
}

.sidebar header .image-text{
    display: flex;
    align-items: center;
}
.sidebar header .logo-text{
    display: flex;
    flex-direction: column;
}
header .image-text .name {
    margin-top: 2px;
    font-size: 18px;
    font-weight: 600;
}

header .image-text .profession{
    font-size: 16px;
    margin-top: -2px;
    display: block;
}

.sidebar header .image{
    display: flex;
    align-items: center;
    justify-content: center;
}

.sidebar header .image img{
    width: 40px;
    border-radius: 6px;
}
body.dark .sidebar header .toggle{
    color: var(--text-color);
}
.sidebar .menu{
    margin-top: 120px;
}


.sidebar li a{
    list-style: none;
    height: 100%;
    background-color: transparent;
    display: flex;
    align-items: center;
    height: 100%;
    width: 100%;
    border-radius: 6px;
    text-decoration: none;
    transition: var(--tran-03);
}

.sidebar li a:hover{
    transform: scale(1.1);
}
.sidebar li a:hover .icon,
.sidebar li a:hover .text{
    color: rgb(250, 252, 253);
}
body.dark .sidebar li a:hover .icon,
body.dark .sidebar li a:hover .text{
    color: rgb(214, 226, 230);
}

.sidebar .menu-bar{
    height: calc(100% - 55px);
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    overflow-y: scroll;
}
.menu-bar::-webkit-scrollbar{
    display: none;
}

.menu-bar .bottom-content .toggle-switch{
    position: absolute;
    right: 0;
    height: 100%;
    min-width: 60px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 6px;
    cursor: pointer;
}
.toggle-switch .switch{
    position: relative;
    height: 22px;
    width: 40px;
    border-radius: 25px;
    background-color: var(--toggle-color);
    transition: var(--tran-05);
}

.switch::before{
    content: '';
    position: absolute;
    height: 15px;
    width: 15px;
    border-radius: 50%;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    background-color: var(--sidebar-color);
    transition: var(--tran-04);
}

body.dark .switch::before{
    left: 20px;
}

.home{
    position: absolute;
    top: 0;
    top: 0;
    left: 250px;
    height: 100vh;
    width: calc(100% - 250px);
    background-color: var(--body-color);
    transition: var(--tran-05);
}
.home .text{
    font-size: 30px;
    font-weight: 500;
    color: var(--text-color);
    padding: 12px 60px;
}

.sidebar.close ~ .home{
    left: 78px;
    height: 100vh;
    width: calc(100% - 78px);
}
body.dark .home .text{
    color: var(--text-color);
}
/*search*/
.field{
  position: relative;
  height: 45px;
  width: 90%;
  margin-left:80px;
  margin-top:40px;
  border-radius: 10px;
  display: flex;
  background: rgba(255,255,255,0.94);
}
.field span{
  color: #222;
  width: 40px;
  text-align:center;
  line-height: 45px;
}
.field input{
  height: 100%;
  width: 1100px;
  background: transparent;
  border: none;
  outline: none;
  color: #222;
  font-size: 20px;
  font-family: 'Poppins',sans-serif;
}
/* movies result*/
}
        .movie{
            width:96%;
            height: 100%;
            left: 60px; 
            position: relative;
            background-color: #0a090e;
            overflow: hidden;
        }
        .movies-title{
            color: white;
            margin-top: 100px;
            margin-bottom: 40px;
            font-family: system-ui;
            margin-left:90px ;
        }
        .movies-title::first-letter{
            color:#608ead;
        }
        .movies-part{
            left: 60px;
            position: relative;
            display: inline;
        }
        .movies-part>a{
            width:18rem;
            height: 12rem;
            margin-left: 25px;
            position: relative;
            margin-bottom: 40px;
            display: contents;
            border-radius:  18px ;
        }
        .movies-part>a>img{
            width:18rem;
            height: 12rem;
            margin-left: 25px;
            position: relative;
            margin-bottom: 40px;
            border-radius:  18px ;
        }
    </style>
</head>
<body>
    <!--side bar start-->
    <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                    <!--<img src="logo.png" alt="">-->
                </span>

                <div class="text logo-text">
                    <span class="name"></span>
                    <span class="profession"></span>
                </div>
            </div>
        </header>

        <div class="menu-bar">
            <div class="menu">

                <ul class="menu-links">
                    <li class="nav-link">
                        <a href="#">
                          <i class='bx bx-user-circle icon'></i>
                            <span class="text nav-text">My Space</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="#">
                          <i class='bx bx-search icon'></i>
                            <span class="text nav-text">Search</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="hom.php">
                            <i class='bx bx-home-alt icon' ></i>
                            <span class="text nav-text">Home</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="#">
                            <i class='bx bx-bell icon'></i>
                            <span class="text nav-text">Notifications</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="watchlistpage.php">
                            <i class='bx bx-pie-chart-alt icon' ></i>
                            <span class="text nav-text">watchlist</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="favouritepage.php">
                            <i class='bx bx-heart icon' ></i>
                            <span class="text nav-text">Favourites</span>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="bottom-content">
                <li >
                    <a href="logout.php" title="Logout">
                        <i class='bx bx-log-out icon' ></i>
                        <span class="text nav-text">Logout</span>
                    </a>
                </li>
            </div>
        </div>
    </nav>
      <!--side bar end-->
      <div class="field">
            <span class="fa fa-search"></span>
            <form method="post">
            <input type="text" required placeholder="Search Movies" name="moviename" id="search">
            </form>
        </div>
    <?php 
    if(isset($_POST['moviename'])):
        $movname=$_POST['moviename'];
        $sql="SELECT postercardurl,pageurl from movies where title LIKE '%$movname%'";
        $result=mysqli_query($con,$sql);
    if($result):
    ?>
    <div class="movie">
    <div class="movies-title">
        <h1>Results for "<?=$_POST['moviename']?>"</h1>
    </div>
    <div class="movies-part">
        <?php 
        while($car=mysqli_fetch_assoc($result)):
        ?>
        <a href="<?=$car['pageurl']?>">
       <img src="<?=$car['postercardurl']?>" class="movies-img">
        </a>
       <?php endwhile; ?>
    </div>
   </div> 
   <?php endif;?>
   <?php else: ?>
    <div class="movie">
    <div class="movies-title">
        <h1>Popular Searches</h1>
    </div>
    <div class="movies-part">
        <?php 
        while($car=mysqli_fetch_assoc($result2)):
        ?>
        <a href="<?=$car['pageurl']?>">
       <img src="<?=$car['postercardurl']?>" class="movies-img">
        </a>
       <?php endwhile; ?>
    </div>
   </div>
   <?php endif;?>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
      const body = document.querySelector('body'),
      sidebar = body.querySelector('nav'),
      menulinks = body.querySelector(".menu-links ");

      menulinks.addEventListener("mouseover" , () =>{
      sidebar.classList.remove("close");
      })
       menulinks.addEventListener("mouseleave" , () =>{
       sidebar.classList.add("close");
       }) 
    </script>
</body>
</html>