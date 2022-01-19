<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");
error_reporting(0);
session_start();
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>Restaurents</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet"> </head>

<body>
           <!--header starts-->
        <header id="header" class="header-scroll top-header headrom">
            <!-- .navbar -->
            <nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="index.php"> <img class="img-rounded" src="images/food-picky-logo.png" alt=""> </a>
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="index.php"><i><b>Home</i></b><span class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="restaurants.php"> <i><b>Restaurants</i></b><span class="sr-only"></span></a> </li>
                            
							<?php
						if(empty($_SESSION["user_id"]))
							{
								echo '<li class="nav-item"><a href="login.php" class="nav-link active"><i><b>Login</i></b></a> </li>
							  <li class="nav-item"><a href="registration.php" class="nav-link active"><i><b>Signup</i></b></a> </li>';
							}
						else
							{
									
									
										echo  '<li class="nav-item"><a href="your_orders.php" class="nav-link active"><i><b>Your Orders</i></b></a> </li>';
									echo  '<li class="nav-item"><a href="logout.php" class="nav-link active"><i><b>Logout</i></b></a> </li>';
							}

						?>
							 
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- /.navbar -->
        </header>
        <div class="page-wrapper">
            <!-- top Links -->
            <div class="top-links">
                <div class="container">
                    <ul class="row links">
                       
                        <li class="col-xs-12 col-sm-4 link-item active"><span>1</span><a href="restaurants.php">Choose Restaurant</a></li>
                        <li class="col-xs-12 col-sm-4 link-item"><span>2</span><a href="#">Pick Your favorite food</a></li>
                        <li class="col-xs-12 col-sm-4 link-item"><span>3</span><a href="#">Order and Pay online</a></li>
                    </ul>
                </div>
            </div>
            <!-- end:Top links -->
            <!-- start: Inner page hero -->
            <div class="inner-page-hero bg-image" data-image-src="images/img/main2.jpg">
                <div class="container"> </div>
                <!-- end:Container -->
            </div>
            <div class="result-show">
                <div class="container">
                    <div class="row">
                       
                       
                    </div>
                </div>
            </div>
            <!-- //results show -->
            <section class="restaurants-page">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-5 col-md-5 col-lg-3">
                          
                          
                            <div class="widget clearfix">
                                <!-- /widget heading -->
                               
                               
                            </div>
                            <!-- end:Widget -->
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-7 col-lg-9">
                            <div class="bg-gray restaurant-entry">
                                <div class="row">
								<?php $ress= mysqli_query($db,"select * from restaurant");
									      while($rows=mysqli_fetch_array($ress))
										  {
													
						
													 echo' <div class="col-sm-12 col-md-12 col-lg-8 text-xs-center text-sm-left">
															<div class="entry-logo">
																<a class="img-fluid" href="dishes.php?res_id='.$rows['rs_id'].'" > <img src="admin/Res_img/'.$rows['image'].'" alt="Food logo"></a>
															</div>
															<!-- end:Logo -->
															<div class="entry-dscr">
																<h5><a href="dishes.php?res_id='.$rows['rs_id'].'" >'.$rows['title'].'</a></h5> <span>'.$rows['address'].' <a href="#">...</a></span>
															
															</div>
															<!-- end:Entry description -->
														</div>
														
														 <div class="col-sm-12 col-md-12 col-lg-4 text-xs-center">
																<div class="right-content bg-white">
																	<div class="right-review">
																		<div class="rating-block"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
																		<p> 245 Reviews</p> <a href="dishes.php?res_id='.$rows['rs_id'].'" class="btn theme-btn-dash">View Menu</a> </div>
																</div>
																<!-- end:right info -->
															</div>';
										  }
						
						
						?>
                                    
                                </div>
                                <!--end:row -->
                            </div>
                         
                            
                                
                            </div>
                          
                          
                           
                        </div>
                    </div>
                </div>
            </section>
            
            
        <!-- start: FOOTER -->
      <footer class="footer">
            <div class="container">
               
                <!-- bottom footer statrs -->
                <div class="bottom-footer">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 payment-options color-gray">
                            <h5><i>Payment Options</i></h5>
                            <ul>
                                <li>
                                    <a href="#"> <img src="images/pay-online.jpg" alt="Paypal"> </a>
                                </li>
                        
                            </ul>
                        </div>
                        <div class="col-xs-12 col-sm-4 address color-gray">
                           
                          </div>
                        <div class="col-xs-12 col-sm-5 additional-info color-gray">
                        <h5><i><u>About Us</u></i></h5>
                            <i><h5>Address :- </h5>
                            <p>Madampe Road<br>Kanadulla,<br>Kuliyapitiya</p>
                            <h5>Phone :- <a href="tel: 037 222 4594">037 222 4594</a></h5>
                            <h5>Email :- <a href="foodpicky@gmail.com">foodpicky@gmail.com</a></h5>
                            <h5>Fax   :-  0001535758 </h5></i>
                        </div>
                    </div>
                </div>
                <!-- bottom footer ends -->
            </div>
        </footer>
        <!-- end:Footer -->
  
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
</body>

</html>