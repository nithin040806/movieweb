<?php 
session_start();
include("connection.php");
include("function.php");
$_SESSION['movieid']=11;
$b=$_SESSION['movieid'];
$_SESSION['pageurl']="http://localhost/project/programs/Waltair_Veerayya.php";
$user_data=check_login($con);
$a=$user_data['userid'] ;
$sql3="SELECT * from watchlist where movieid=$b AND userid=$a";
$result=mysqli_query($con,$sql3);
$watch=mysqli_fetch_assoc($result);
$sql5="SELECT * from favourite where movieid=$b AND userid=$a";
$result2=mysqli_query($con,$sql5);
$favourite=mysqli_fetch_assoc($result2);
?>

<?php 
  $servername="localhost";
  $username="root";
  $password="";
  $dbname="project";
  $conn=new mysqli($servername,$username,$password,$dbname);
  if($conn->connect_error){
    die("connection failed".$conn->connect_error);
  }
  $sql="SELECT * FROM movies WHERE movieid=$b";
  $car=$conn->query($sql);
  $row=mysqli_fetch_assoc($car);
  $sql4="SELECT m.postercardurl,m.pageurl FROM movies m  RIGHT JOIN languagebridge lb on m.movieid=lb.movieid WHERE lb.languageid=1 ORDER BY `m`.`postercardurl` ASC";
  $carousel2=$con->query($sql4);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$row['title']?></title>
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
     <link rel="stylesheet" href="moviepages.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <style>
      .movie{
        background-image: url("<?php echo $row['posterurl']?>");
        background-position:top;
      }
     </style>
</head>
<body>
    <!--side bar-->
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
                    <a href="searchpage.php">
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
  <!--side bar over-->
<div class="movie">
    <div class="content">
        <div class="movie-header">
          <img src="<?php echo $row['headerurl']?>">
        </div>
        <div class="movie-content">
            <p>
            <?php echo $row['plotsummary']?>   
            </p>
            <div class="movie-details">
                <p class="imdb-rating">
                 IMDB  <?php echo $row['IMDbrating']?>
                </p>
                <p class="time">
                <?php echo $row['runtime']?>min
                </p>
                <p class="year">
                <?php echo $row['releaseyear']?>
                </p>
            </div>
            <div class="buttons">
                <button id="watch" title="Watch Movie">Watch</button>
                <button id="trailer" title="Watch Trailer">Trailer</button>
                <?php 
                if(!$watch):
                ?>
                <button id="watchlist" title="Add to watchlist">
                  <a href="watchlist.php" class="wa">+</a>
                </button>
                <?php else: ?>
                  <button id="removewatchlist" title="Remove from watchlist">
                  <a href="removewatchlist.php" class="rwa"><i class='bx bx-check'></i></a>
                </button>
                <?php endif; ?>
                <?php 
                if(!$favourite):
                ?>
                <button id="favourite" title="add to favourite">
                <a href="favourite.php" class="wa"><i class='bx bx-heart icon' ></i>
                </a>
                </button>
                <?php else: ?>
                  <button id="favourite" title="Remove from favourite">
                <a href="removefavourite.php" class="wa"><i class='bx bxs-heart icon' ></i>
                </a>
                </button>
                <?php endif; ?>
                <div id="videoPopup1" class="modal">
                  <div class="modal-content">
                    <span class="cls">&times;</span>
                    <video controls class="vid">
                        <source src="<?php echo $row['movieurl']?>" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                  </div>
                </div>
                <div id="videoPopup" class="modal">
                  <div class="modal-content">
                      <span class="close-button">&times;</span>
                      <video controls class="vid">
                          <source src="<?php echo $row['trailerurl']?>" type="video/mp4">
                          Your browser does not support the video tag.
                      </video>
                  </div>
              </div>
            </div> 
        </div>
    </div>
    <div class="blanck"></div>
</div>

<h2 class="s-header">
      Related movies
    </h2>
    <div class="movies-list">
      <button class="pre-btn"><img src="/project/img/pre.png" alt=""></button>
      <button class="nxt-btn"><img src="/project/img/nxt.png" alt=""></button>
      <div class="card-container">
        <?php 
        while($carmovie=mysqli_fetch_assoc($carousel2)):
        ?>
          <div class="card">
            <a href="<?= $carmovie['pageurl']?>">
               <img src="<?=$carmovie['postercardurl']?>" alt="" class="card-img">
            </a>
          </div>
        <?php endwhile;?>
      </div>
    </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
  <script>
    document.addEventListener("click", e => {
  let handle
  if (e.target.matches(".handle")) {
    handle = e.target
  } else {
    handle = e.target.closest(".handle")
  }
  if (handle != null) onHandleClick(handle)
})

const throttleProgressBar = throttle(() => {
  document.querySelectorAll(".progress-bar").forEach(calculateProgressBar)
}, 250)
window.addEventListener("resize", throttleProgressBar)

document.querySelectorAll(".progress-bar").forEach(calculateProgressBar)

function calculateProgressBar(progressBar) {
  progressBar.innerHTML = ""
  const sliders = progressBar.closest(".row").querySelector(".sliders")
  const itemCount = sliders.children.length
  const itemsPerScreen = parseInt(
    getComputedStyle(sliders).getPropertyValue("--items-per-screen")
  )
  let slidersIndex = parseInt(
    getComputedStyle(sliders).getPropertyValue("--sliders-index")
  )
  const progressBarItemCount = Math.ceil(itemCount / itemsPerScreen)

  if (slidersIndex >= progressBarItemCount) {
    sliders.style.setProperty("--sliders-index", progressBarItemCount - 1)
    slidersIndex = progressBarItemCount - 1
  }

  for (let i = 0; i < progressBarItemCount; i++) {
    const barItem = document.createElement("div")
    barItem.classList.add("progress-item")
    if (i === slidersIndex) {
      barItem.classList.add("active")
    }
    progressBar.append(barItem)
  }
}

function onHandleClick(handle) {
  const progressBar = handle.closest(".row").querySelector(".progress-bar")
  const sliders = handle.closest(".container").querySelector(".sliders")
  const slidersIndex = parseInt(
    getComputedStyle(sliders).getPropertyValue("--sliders-index")
  )
  const progressBarItemCount = progressBar.children.length
  if (handle.classList.contains("left-handle")) {
    if (slidersIndex - 1 < 0) {
      sliders.style.setProperty("--sliders-index", progressBarItemCount - 1)
      progressBar.children[slidersIndex].classList.remove("active")
      progressBar.children[progressBarItemCount - 1].classList.add("active")
    } else {
      sliders.style.setProperty("--sliders-index", slidersIndex - 1)
      progressBar.children[slidersIndex].classList.remove("active")
      progressBar.children[slidersIndex - 1].classList.add("active")
    }
  }

  if (handle.classList.contains("right-handle")) {
    if (slidersIndex + 1 >= progressBarItemCount) {
      sliders.style.setProperty("--sliders-index", 0)
      progressBar.children[slidersIndex].classList.remove("active")
      progressBar.children[0].classList.add("active")
    } else {
      sliders.style.setProperty("--sliders-index", slidersIndex + 1)
      progressBar.children[slidersIndex].classList.remove("active")
      progressBar.children[slidersIndex + 1].classList.add("active")
    }
  }
}

function throttle(cb, delay = 1000) {
  let shouldWait = false
  let waitingArgs
  const timeoutFunc = () => {
    if (waitingArgs == null) {
      shouldWait = false
    } else {
      cb(...waitingArgs)
      waitingArgs = null
      setTimeout(timeoutFunc, delay)
    }
  }

  return (...args) => {
    if (shouldWait) {
      waitingArgs = args
      return
    }

    cb(...args)
    shouldWait = true
    setTimeout(timeoutFunc, delay)
  }
}
  </script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script>
   $(document).ready(function(){
    $('.handle').hide();
    $('.progress-bar').hide();
    $('.container').hover(function(){
      $('.handle').show();
      $('.progress-bar').show();
    },function(){
      $('.handle').hide();
      $('.progress-bar').hide();
    });
   });
  </script> 
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
<!-- video popup start-->
<script>
  document.addEventListener('DOMContentLoaded', function() {
      var modal = document.getElementById('videoPopup');
      var btn = document.getElementById('trailer');
      var span = document.getElementsByClassName('close-button')[0];
  
      btn.onclick = function() {
          modal.style.display = "block";
      }
  
      span.onclick = function() {
          modal.style.display = "none";
          var video = modal.querySelector("video");
          video.pause();
      }
  
      window.onclick = function(event) {
          if (event.target == modal) {
              modal.style.display = "none";
              var video = modal.querySelector("video");
              video.pause();
          }
      }
  });
  
</script>
<script>
  document.addEventListener('DOMContentLoaded', function() {
    var modal = document.getElementById('videoPopup1');
    var btn = document.getElementById('watch');
    var span = document.getElementsByClassName('cls')[0];

    btn.onclick = function() {
        modal.style.display = "block";
    }

    span.onclick = function() {
        modal.style.display = "none";
        var video = modal.querySelector("video");
        video.pause();
    }

    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
            var video = modal.querySelector("video");
            video.pause();
        }
    }
});

</script>
  <!-- video popup end-->
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