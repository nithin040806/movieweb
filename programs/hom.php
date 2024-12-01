<?php
  session_start();
  include("connection.php");
  include("function.php");
  $user_data=check_login($con);
  $sql="SELECT * FROM movies WHERE header=1 ORDER BY movieid DESC";
  $carousel=$con->query($sql);
  $sql1="SELECT m.postercardurl,m.pageurl,m.movieid FROM movies m  inner JOIN languagebridge lb on m.movieid=lb.movieid where m.releaseyear=2023 ORDER BY `m`.`movieid` DESC";
  $carousel1=$con->query($sql1);
  $sql2="SELECT m.postercardurl,m.pageurl FROM movies m  inner JOIN languagebridge lb on m.movieid=lb.movieid where lb.languageid=2";
  $carousel2=$con->query($sql2);
  $sql3="SELECT m.postercardurl,m.pageurl FROM movies m  inner JOIN languagebridge lb on m.movieid=lb.movieid where lb.languageid=3 ORDER BY `m`.`postercardurl` DESC";
  $carousel3=$con->query($sql3);
  $sql4="SELECT m.postercardurl,m.pageurl FROM movies m  inner JOIN languagebridge lb on m.movieid=lb.movieid where lb.languageid=4 ORDER BY `m`.`postercardurl` ASC";
  $carousel4=$con->query($sql4);
  $sql14="SELECT m.postercardurl,m.pageurl FROM movies m  inner JOIN languagebridge lb on m.movieid=lb.movieid where lb.languageid=1 ORDER BY `m`.`postercardurl` DESC";
  $carousel14=$con->query($sql14);
  $sql5="SELECT m.postercardurl,m.pageurl FROM movies m  inner JOIN languagebridge lb on m.movieid=lb.movieid where lb.languageid=5 ORDER BY `m`.`postercardurl` DESC ";
  $carousel5=$con->query($sql5);
  $sql6="SELECT m.postercardurl,m.pageurl FROM movies m  inner JOIN genrebridge gb on m.movieid=gb.movieid where gb.genreid=1 ORDER BY `m`.`postercardurl` ASC ";
  $carousel6=$con->query($sql6);
  $sql7="SELECT m.postercardurl,m.pageurl,m.movieid FROM movies m  inner JOIN genrebridge gb on m.movieid=gb.movieid where gb.genreid=2 ORDER BY `m`.`movieid` ASC ";
  $carousel7=$con->query($sql7);
  $sql8="SELECT m.postercardurl,m.pageurl FROM movies m  inner JOIN genrebridge gb on m.movieid=gb.movieid where gb.genreid=3 ORDER BY `m`.`postercardurl` DESC ";
  $carousel8=$con->query($sql8);
  $sql9="SELECT m.postercardurl,m.pageurl FROM movies m  inner JOIN genrebridge gb on m.movieid=gb.movieid where gb.genreid=4 ORDER BY `m`.`postercardurl` DESC ";
  $carousel9=$con->query($sql9);
  $sql10="SELECT m.postercardurl,m.pageurl,m.movieid FROM movies m  inner JOIN genrebridge gb on m.movieid=gb.movieid where gb.genreid=6 ORDER BY `m`.`movieid` DESC ";
  $carousel10=$con->query($sql10);
  $sql11="SELECT m.postercardurl,m.pageurl,m.movieid FROM movies m  inner JOIN genrebridge gb on m.movieid=gb.movieid where gb.genreid=8 ORDER BY `m`.`movieid` ASC ";
  $carousel11=$con->query($sql11);
  $sql12="SELECT m.postercardurl,m.pageurl,m.movieid FROM movies m  inner JOIN genrebridge gb on m.movieid=gb.movieid where gb.genreid=10 ORDER BY `m`.`movieid` ASC ";
  $carousel12=$con->query($sql12);
  $sql13="SELECT m.postercardurl,m.pageurl,m.movieid FROM movies m  inner JOIN genrebridge gb on m.movieid=gb.movieid where gb.genreid=11 ORDER BY `m`.`movieid` DESC ";
  $carousel13=$con->query($sql13);
?>
<!DOCTYPE html>
  <!-- Coding by CodingLab | www.codinglabweb.com -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
       <!----======== CSS ======== -->

    
    <!----===== Boxicons CSS ===== -->
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
    <link rel="stylesheet" href="hom.css">
    <link rel="icon" type="image/x-icon" href="http://localhost/project/img/Capture-fotor-2023091120032.png">
    <title>Open Night</title>
</head>
<body>
    <!--side bar start-->
    <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                  <img src="" alt="">
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
                        <a href="searchpage.php">
                          <i class='bx bx-search icon'></i>
                            <span class="text nav-text">Search</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="#">
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
      <!--logo start-->
      <div class="logo">
        <img src="http://localhost/project/img/Screenshot_2023-09-11_133039-removebg-preview.png">    
      </div>
      <!--logo end-->
      <!--carousel start-->
      <div class="owl-carousel owl-theme">
        <div id="slide-1">
            <div id="im-1">
                <img src="https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/4278/1374278-i-00cd5b606a7a " id="img-1" style="border-radius: 20px;">
            </div>
            <div id="vid-1">
                <video id="myVideo-1" width="800" height="400">
                    <source src="http://localhost/project/trailers/English%20trailers/Pirates%20of%20the%20Caribbean%20The%20Curse%20of%20the%20Black%20Pearl%20Trailer%20%231%20-%20Johnny%20Depp%20HD%20(1).mp4" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
            </div>
             <div class="slide-content">
                <h1><img src="https://img10.hotstar.com/image/upload/f_auto,h_136/sources/r1/cms/prod/4280/1374280-t-4195a0ffe804"></h1>
                <button><a href="http://localhost/project/programs/Pirates_of_the_Caribbean_1.php" style="text-decoration: none;color:rgb(18 20 22);">watch</a></button>
             </div>
        </div>
        <?php
        while($carmovie=mysqli_fetch_assoc($carousel)):
        ?>
        <div class=" slide">
            <div class="im">
                <a href="<?=$carmovie['pageurl']?>"><img src="<?=$carmovie['posterurl']?>"></a>
            </div>
            <div class="slide-content">
                <h1><img src="<?=$carmovie['headerurl']?>"></h1>
                <button><a href="<?=$carmovie['pageurl']?>" style="text-decoration: none;color:rgb(18 20 22);">watch</a></button>
            </div>
        </div>
        <?php endwhile;?>
    </div>
    <!--carousel end-->
    <!--slider start-->
    <div class="header">
    <h2 class="s-head">
      Latest movies
     </h2>
     <a href="http://localhost/project/programs/Latest_movies.php">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel1)):
        ?>
          <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <div class="header">
    <h2 class="s-header">
      Hindi movies
    </h2>
    <a href="http://localhost/project/programs/hindi_movies.php">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel2)):
        ?>
        <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <div class="header">
    <h2 class="s-header">
      Malayalam movies
    </h2>
    <a href="http://localhost/project/programs/Malyalam_movies.php">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel3)):
        ?>
        <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <div class="header">
    <h2 class="s-header">
      English movies
    </h2>
    <a href="http://localhost/project/programs/English_movies.php">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel4)):
        ?>
        <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <div class="header">
    <h2 class="s-header">
      Telugu movies
    </h2>
    <a href="">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel14)):
        ?>
        <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <div class="header">
    <h2 class="s-header">
      Tamil movies
    </h2>
    <a href="">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel5)):
        ?>
        <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <div class="header">
    <h2 class="s-header">
      Action movies
    </h2>
    <a href="">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel6)):
        ?>
        <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <div class="header">
    <h2 class="s-header">
     Adventure movies
    </h2>
    <a href="">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel7)):
        ?>
        <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <div class="header">
    <h2 class="s-header">
      Comedy movies
    </h2>
    <a href="">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel8)):
        ?>
        <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <div class="header">
    <h2 class="s-header">
      Drama movies
    </h2>
    <a href="">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel9)):
        ?>
        <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <div class="header">
    <h2 class="s-header">
      Romance movies
    </h2>
    <a href="">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel10)):
        ?>
        <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <div class="header">
    <h2 class="s-header">
      Fantasy movies
    </h2>
    <a href="">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel11)):
        ?>
        <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <div class="header">
    <h2 class="s-header">
      Crime movies
    </h2>
    <a href="">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel12)):
        ?>
        <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <div class="header">
    <h2 class="s-header">
       Thriller movies
    </h2>
    <a href="">See more  <pre> &gt&gt</pre></a>
    </div>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel13)):
        ?>
        <a href="<?= $carmovie['pageurl']?>">
          <div class="card">
              <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
          </div>
        </a>
        <?php endwhile;?>
      </div>
    </div>
    <!--slider end-->
    <!-- Jquery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Owl Carousel -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
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
     <script>
      $(document).ready(function () {
          $(".owl-carousel").owlCarousel({
              items:1,
              loop:true,
              nav:true,
              dots:true,
              autoplay:true,
              autoplaySpeed:800,
              smartSpeed:800,
              autoplayHoverPause:true
          });
      });
  </script>
      <script>
          $(document).ready(function() {
      $('#slide-1').hover(function() {
          var video=$('#myVideo-1').get(0);
          video.currentTime=0;
          setTimeout(function(){
              $('#vid-1').show();
              $('#im-1').hide();
              $('#img-1').hide();
              video.play();
          },0);
      }, function() {
          $('#myVideo-1').get(0).pause();
          $('#vid-1').hide();
          $('#im-1').show();
          $('#img-1').show();
      });
          $('.owl-carousel owl-theme').on('slide.bs.carousel', function () {
             var video = $('#myVideo-1').get(0);
             video.pause();
           });
  });
  
      </script>
       <script>
        

        // cards sliders
        
        let cardContainers = document.querySelectorAll('.card-container');
        let preBtns = document.querySelectorAll('.pre-btn');
        let nxtBtns = document.querySelectorAll('.nxt-btn');
        
        cardContainers.forEach((item, i) => {
            let containerDimensions = item.getBoundingClientRect();
            let containerWidth = containerDimensions.width;
        
            nxtBtns[i].addEventListener('click', () => {
                item.scrollLeft += containerWidth ;
            })
        
            preBtns[i].addEventListener('click', () => {
                item.scrollLeft -= containerWidth ;
            })
        })
               </script>
</body>
</html>