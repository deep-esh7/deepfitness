<!DOCTYPE html>
<html lang="en">
<head> 
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme Company Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <head>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
</head>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
  


  <style>
  .jumbotron {
    background-color: #f4511e;
    color: #fff;
    padding: 100px 25px;
  }
  .container-fluid {
    padding: 60px 50px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #f4511e;
    font-size: 50px;
  }
  .logo {
    color: #f4511e;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #f4511e;
  }
  .carousel-indicators li {
    border-color: ;
  }
  .carousel-indicators li.active {
    background-color: ;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid blue; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel-default:hover {
    box-shadow: 10px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
    border: 1px solid #f4511e;
    background-color: #fff !important;
    color: #f4511e;
  }
  .panel-heading {
    color: black;
    background-color: grey;
    padding: 25px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }
  .panel-footer {
    background-color: white;
  }

    
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
 

  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  }
 

.block {
  height: 100%;
  line-height: 20em;
  width: 100%;

  color: #fdfdfd;
  text-align: center;
  margin: 1em auto;
  text-shadow: 0 0 1px #333; /* so one can see fadeBgColor properly */
}

.animatable {
  
  /* initially hide animatable objects */
  visibility: hidden;
  
  /* initially pause animatable objects their animations */
  -webkit-animation-play-state: paused;   
  -moz-animation-play-state: paused;     
  -ms-animation-play-state: paused;
  -o-animation-play-state: paused;   
  animation-play-state: paused; 
}

/* show objects being animated */
.animated {
  visibility: visible;
  
  -webkit-animation-fill-mode: both;
  -moz-animation-fill-mode: both;
  -ms-animation-fill-mode: both;
  -o-animation-fill-mode: both;
  animation-fill-mode: both;
  
  -webkit-animation-duration: 1s;
  -moz-animation-duration: 1s;
  -ms-animation-duration: 1s;
  -o-animation-duration: 1s;
  animation-duration: 1s;

  -webkit-animation-play-state: running;
  -moz-animation-play-state: running;
  -ms-animation-play-state: running;
  -o-animation-play-state: running;
  animation-play-state: running;
}

/* CSS Animations (extracted from http://glifo.uiparade.com/) */
@-webkit-keyframes fadeInDown {
	0% {
		opacity: 0;
		-webkit-transform: translateY(-20px);
	}	100% {
		opacity: 1;
		-webkit-transform: translateY(0);
	}
}

@-moz-keyframes fadeInDown {
	0% {
		opacity: 0;
		-moz-transform: translateY(-20px);
	}

	100% {
		opacity: 1;
		-moz-transform: translateY(0);
	}
}

@-o-keyframes fadeInDown {
	0% {
		opacity: 0;
		-o-transform: translateY(-20px);
	}

	100% {
		opacity: 1;
		-o-transform: translateY(0);
	}
}

@keyframes fadeInDown {
	0% {
		opacity: 0;
		transform: translateY(-20px);
	}
	100% {
		opacity: 1;
		transform: translateY(0);
	}
}



@-webkit-keyframes fadeIn {
	0% {
		opacity: 0;
	}
	20% {
		opacity: 0;
	}
	100% {
		opacity: 1;
	}
}

@-moz-keyframes fadeIn {
	0% {
		opacity: 0;
	}
	20% {
		opacity: 0;
	}
	100% {
		opacity: 1;
	}
}

@-o-keyframes fadeIn {
	0% {
		opacity: 0;
	}
	20% {
		opacity: 0;
	}
	100% {
		opacity: 1;
	}
}

@keyframes fadeIn {
	0% {
		opacity: 0;
	}
	60% {
		opacity: 0;
	}
	20% {
		opacity: 0;
	}
	100% {
		opacity: 1;
	}
}
@-webkit-keyframes bounceInLeft {
	0% {
		opacity: 0;
		-webkit-transform: translateX(-2000px);
	}
	60% {
		-webkit-transform: translateX(20px);
	}

	80% {
		-webkit-transform: translateX(-5px);
	}

	100% {
		opacity: 1;
		-webkit-transform: translateX(0);
	}
}

@-moz-keyframes bounceInLeft {
	0% {
		opacity: 0;
		-moz-transform: translateX(-2000px);
	}

	60% {
		-moz-transform: translateX(20px);
	}

	80% {
		-moz-transform: translateX(-5px);
	}

	100% {
		opacity: 1;
		-moz-transform: translateX(0);
	}
}

@-o-keyframes bounceInLeft {
	0% {
		opacity: 0;
		-o-transform: translateX(-2000px);
	}

	60% {
		opacity: 1;
		-o-transform: translateX(20px);
	}

	80% {
		-o-transform: translateX(-5px);
	}

	100% {
		opacity: 1;
		-o-transform: translateX(0);
	}
}

@keyframes bounceInLeft {
	0% {
		opacity: 0;
		transform: translateX(-2000px);
	}

	60% {
		transform: translateX(20px);
	}

	80% {
		transform: translateX(-5px);
	}

	100% {
		opacity: 1;
		transform: translateX(0);
	}
}
@-webkit-keyframes bounceInRight {
	0% {
		opacity: 0;
		-webkit-transform: translateX(2000px);
	}

	60% {
		-webkit-transform: translateX(-20px);
	}

	80% {
		-webkit-transform: translateX(5px);
	}

	100% {
		opacity: 1;
		-webkit-transform: translateX(0);
	}
}

@-moz-keyframes bounceInRight {
	0% {
		opacity: 0;
		-moz-transform: translateX(2000px);
	}

	60% {
		-moz-transform: translateX(-20px);
	}

	80% {
		-moz-transform: translateX(5px);
	}

	100% {
		opacity: 1;
		-moz-transform: translateX(0);
	}
}

@-o-keyframes bounceInRight {
	0% {
		opacity: 0;
		-o-transform: translateX(2000px);
	}

	60% {
		-o-transform: translateX(-20px);
	}

	80% {
		-o-transform: translateX(5px);
	}

	100% {
		opacity: 1;
		-o-transform: translateX(0);
	}
}

@keyframes bounceInRight {
	0% {
		opacity: 0;
		transform: translateX(2000px);
	}

	60% {
		transform: translateX(-20px);
	}

	80% {
		transform: translateX(5px);
	}

	100% {
		opacity: 1;
		transform: translateX(0);
	}
}
@-webkit-keyframes fadeInUp {
	0% {
		opacity: 0;
		-webkit-transform: translateY(20px);
	}	100% {
		opacity: 1;
		-webkit-transform: translateY(0);
	}
}

@-moz-keyframes fadeInUp {
	0% {
		opacity: 0;
		-moz-transform: translateY(20px);
	}

	100% {
		opacity: 1;
		-moz-transform: translateY(0);
	}
}

@-o-keyframes fadeInUp {
	0% {
		opacity: 0;
		-o-transform: translateY(20px);
	}

	100% {
		opacity: 1;
		-o-transform: translateY(0);
	}
}

@keyframes fadeInUp {
	0% {
		opacity: 0;
		transform: translateY(20px);
	}

	100% {
		opacity: 1;
		transform: translateY(0);
	}
}
@-webkit-keyframes bounceIn {
	0% {
		opacity: 0;
		-webkit-transform: scale(.3);
	}
	50% {
		-webkit-transform: scale(1.05);
	}

	70% {
		-webkit-transform: scale(.9);
	}

	100% {
		opacity: 1;
		-webkit-transform: scale(1);
	}
}

@-moz-keyframes bounceIn {
	0% {
		opacity: 0;
		-moz-transform: scale(.3);
	}

	50% {
		-moz-transform: scale(1.05);
	}

	70% {
		-moz-transform: scale(.9);
	}

	100% {
		opacity: 1;
		-moz-transform: scale(1);
	}
}

@-o-keyframes bounceIn {
	0% {
		opacity: 0;
		-o-transform: scale(.3);
	}

	50% {
		-o-transform: scale(1.05);
	}

	70% {
		-o-transform: scale(.9);
	}

	100% {
		opacity: 1;
		-o-transform: scale(1);
	}
}

@keyframes bounceIn {
	0% {
		opacity: 0;
		transform: scale(.3);
	}

	50% {
		transform: scale(1.05);
	}

	70% {
		transform: scale(.9);
	}

	100% {
		opacity: 1;
		transform: scale(1);
	}
}
@-webkit-keyframes moveUp {
	0% {
		opacity: 1;
		-webkit-transform: translateY(40px);
	}	100% {
		opacity: 1;
		-webkit-transform: translateY(0);
	}
}

@-moz-keyframes moveUp {
	0% {
		opacity: 1;
		-moz-transform: translateY(40px);
	}

	100% {
		opacity: 1;
		-moz-transform: translateY(0);
	}
}

@-o-keyframes moveUp {
	0% {
		opacity: 1;
		-o-transform: translateY(40px);
	}

	100% {
		opacity: 1;
		-o-transform: translateY(0);
	}
}

@keyframes moveUp {
	0% {
		opacity: 1;
		transform: translateY(40px);
	}

	100% {
		opacity: 1;
		transform: translateY(0);
	}
}

@-webkit-keyframes fadeBgColor {
	0%{
		background:none;
	}
  70%{
		background:none;
	}
	100%{
		background:#464646;
	}
}
@-o-keyframes fadeBgColor {
	0%{
		background:none;
	}
  70%{
		background:none;
	}
	100%{
		background:#464646;
	}
}
@keyframes fadeBgColor {
	0%{
		background:none;
	}
  70%{
		background:none;
	}
	100%{
		background:#464646;
	}
}

.animated.animationDelay{
	animation-delay:.4s;
	-webkit-animation-delay:.4s;
}
.animated.animationDelayMed{
	animation-delay:1.2s;
	-webkit-animation-delay:1.2s;
}
.animated.animationDelayLong{
	animation-delay:1.6s;
	-webkit-animation-delay:1.6s;
}
.animated.fadeBgColor {
	-webkit-animation-name: fadeBgColor;
	-moz-animation-name: fadeBgColor;
	-o-animation-name: fadeBgColor;
	animation-name: fadeBgColor;
}
.animated.bounceIn {
	-webkit-animation-name: bounceIn;
	-moz-animation-name: bounceIn;
	-o-animation-name: bounceIn;
	animation-name: bounceIn;
}
.animated.bounceInRight {
	-webkit-animation-name: bounceInRight;
	-moz-animation-name: bounceInRight;
	-o-animation-name: bounceInRight;
	animation-name: bounceInRight;
}
.animated.bounceInLeft {
	-webkit-animation-name: bounceInLeft;
	-moz-animation-name: bounceInLeft;
	-o-animation-name: bounceInLeft;
	animation-name: bounceInLeft;
}
.animated.fadeIn {
	-webkit-animation-name: fadeIn;
	-moz-animation-name: fadeIn;
	-o-animation-name: fadeIn;
	animation-name: fadeIn;
}
.animated.fadeInDown {
	-webkit-animation-name: fadeInDown;
	-moz-animation-name: fadeInDown;
	-o-animation-name: fadeInDown;
	animation-name: fadeInDown;
}
.animated.fadeInUp {
	-webkit-animation-name: fadeInUp;
	-moz-animation-name: fadeInUp;
	-o-animation-name: fadeInUp;
	animation-name: fadeInUp;
}
.animated.moveUp {
	-webkit-animation-name: moveUp;
	-moz-animation-name: moveUp;
	-o-animation-name: moveUp;
	animation-name: moveUp;
}
  .wow {
   
}
  </style>
</head>
<body>



  <div class="row">
   <div class="col-sm-4 col-xs-12 "> 
    <div data-wow-offset="200" class="block animatable bounceInLeft">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>TRAINING</h1>
        </div>
        <div class="thumbnail">
         <img src="images/train_1_520x400.jpg"/>
                   <p><a href=""><font color="black"><strong>Weight training is an excellent workout, you'll really get your heart rate up by adding in some body movements to your circuit training plan.</font></strong>
                   <br> <font color="red">Read More...!</font></a></p>
        </div>
       </div>
      </div>      
    </div>     
    
    
    <div class="col-sm-4 col-xs-12"> <div class="block animatable fadeInUp">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>NUTRITION</h1>
        </div>
     <div class="thumbnail">
         <img src="images/nutrition_2_520x400.jpg"> 
          <p><a href=""><font color="black"><strong>For muscle growth nutrition is the main key, this is the most important factor for muscle growth to occur.</strong></font> <br><font color="red">Read More...!</font></a> </p>
        </div>
       </div>
      </div>      
    </div>       
   
    <div class="col-sm-4 col-xs-12">
    <div class="block animatable fadeInRight">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>VIDEOS</h1>
        </div>
        <div class="thumbnail">
         <img src="images/vid_1_520x400.jpg">   <p><a href=""><font color="black"><strong>To get proper information about muscle growth and workout plans. Watch Our Videos!</strong> </font><br><font color="red">Watch Now...!</font></a></p>
        </div>
     </div>
      </div>      
    </div>    
  </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
  <script type="text/javascript">// Trigger CSS animations on scroll.
//Detailed explanation can be found at http://www.bram.us/2013/11/20/scroll-animations/

//Looking for a version that also reverses the animation when
//elements scroll below the fold again?
//--> Check https://codepen.io/bramus/pen/vKpjNP

jQuery(function($) {
 
 // Function which adds the 'animated' class to any '.animatable' in view
 var doAnimations = function() {
   
   // Calc current offset and get all animatables
   var offset = $(window).scrollTop() + $(window).height(),
       $animatables = $('.animatable');
   
   // Unbind scroll handler if we have no animatables
   if ($animatables.length == 0) {
     $(window).off('scroll', doAnimations);
   }
   
   // Check all animatables and animate them if necessary
		$animatables.each(function(i) {
      var $animatable = $(this);
			if (($animatable.offset().top + $animatable.height() - 20) < offset) {
       $animatable.removeClass('animatable').addClass('animated');
			}
   });

	};
 
 // Hook doAnimations on scroll, and trigger a scroll
	$(window).on('scroll', doAnimations);
 $(window).trigger('scroll');

});</script>
  
  

  <script src="js/wow.min.js"></script>

</body>
</html>
