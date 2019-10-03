<head>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
  <link rel="stylesheet" href="css/animation.css">
</head>
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
  
  

  
<style type="text/css">
*{
padding: 0;}

table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
width: 100%;
  border-collapse: collapse;
  background: black;
  
  font-size: 15px;
  font-weight:;
}

th, td {
  padding: 15px;
   margin-top:25px;

}
</style>
<br><br><br>
<table><tr><td><br><b><font color="white"  ><center>DEEP Fitness is an fitness freak guy who is inspiring the youth by his information and knowledge about fitness<br>
Contact Us @ 9557920831<br>DEEP FITNESS (2018-2019)</center>
</font></b></td></tr>
</table>
<br>

</nav></center>


