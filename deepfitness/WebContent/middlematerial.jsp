<!DOCTYPE html>
<html lang="en">
<head> 
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme Company Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  


  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

 
  


  
</head>
<body>



  <div class="row">
   <div class="col-sm-4 col-xs-12 "> 
    <div class="animatable fadeInLeft">
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
    
    
    <div class="col-sm-4 col-xs-12"> <div class="animatable fadeInUp">
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
    <div class="animatable fadeInRight">
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
