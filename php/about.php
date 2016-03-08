<?php 						
session_start(); 
error_reporting (0);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><!--compatibilidad de idiomas-->
		<link rel="stylesheet" type="text/css" href="../css/estilos.css"/><!--enlace interno a la hoja de estilos css-->
		<meta name="author" content="Pilar Paradela"/><!--informacion de la pagina para los navegadores-->
		<meta name="description" content="Imprenta"/>
		<meta name="keywords" content="musica,sonido,comprar,discos,cd"/>
		<meta http-equiv="refresh" content="300"/><!--actualizacion de la pagina cada 300 seg-->
		<script type="text/javascript" src="js/jquery.js"></script> <!--enlace a slider de jquery-->
		<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
		<!-- use jssor.slider.mini.js (39KB) or jssor.sliderc.mini.js (31KB, with caption, no slideshow) or jssor.sliders.mini.js (26KB, no caption, no slideshow) instead for release -->
		<!-- jssor.slider.mini.js = jssor.sliderc.mini.js = jssor.sliders.mini.js = (jssor.core.js + jssor.utils.js + jssor.slider.js) -->
		<script type="text/javascript" src="js/jssor.core.js"></script>
		<script type="text/javascript" src="js/jssor.utils.js"></script>
		<script type="text/javascript" src="js/jssor.slider.js"></script>
		<script>
		
			jQuery(document).ready(function ($) {
            //Reference http://www.jssor.com/development/slider-with-caption.html
            //Reference http://www.jssor.com/development/reference-ui-definition.html#captiondefinition
            //Reference http://www.jssor.com/development/tool-caption-transition-viewer.html

            var _CaptionTransitions = [
            //CLIP|LR
            {$Duration: 900, $Clip: 3, $Easing: $JssorEasing$.$EaseInOutCubic },
            //CLIP|TB
            {$Duration: 900, $Clip: 12, $Easing: $JssorEasing$.$EaseInOutCubic },

            //ZMF|10
            {$Duration: 600, $Zoom: 11, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 },

            //ZML|R
            {$Duration: 600, $Zoom: 11, $FlyDirection: 2, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $ScaleHorizontal: 0.6, $Opacity: 2 },
            //ZML|B
            {$Duration: 600, $Zoom: 11, $FlyDirection: 8, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $ScaleVertical: 0.6, $Opacity: 2 },

            //ZMS|B
            {$Duration: 700, $Zoom: 1, $FlyDirection: 8, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $ScaleVertical: 0.6, $Opacity: 2 },

            //RTT|10
            {$Duration: 700, $Zoom: 11, $Rotate: 1, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.8} },

            //RTTL|R
            {$Duration: 700, $Zoom: 11, $Rotate: 1, $FlyDirection: 2, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInCubic }, $ScaleHorizontal: 0.6, $Opacity: 2, $Round: { $Rotate: 0.8} },
            //RTTL|B
            {$Duration: 700, $Zoom: 11, $Rotate: 1, $FlyDirection: 8, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInCubic }, $ScaleVertical: 0.6, $Opacity: 2, $Round: { $Rotate: 0.8} },

            //RTTS|R
            {$Duration: 700, $Zoom: 1, $Rotate: 1, $FlyDirection: 2, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Zoom: $JssorEasing$.$EaseInQuad, $Rotate: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseOutQuad }, $ScaleHorizontal: 0.6, $Opacity: 2, $Round: { $Rotate: 1.2} },
            //RTTS|B
            {$Duration: 700, $Zoom: 1, $Rotate: 1, $FlyDirection: 8, $Easing: { $Top: $JssorEasing$.$EaseInQuad, $Zoom: $JssorEasing$.$EaseInQuad, $Rotate: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseOutQuad }, $ScaleVertical: 0.6, $Opacity: 2, $Round: { $Rotate: 1.2} },

            //R|IB
            {$Duration: 900, $FlyDirection: 2, $Easing: { $Left: $JssorEasing$.$EaseInOutBack }, $ScaleHorizontal: 0.6, $Opacity: 2 },
            //B|IB
            {$Duration: 900, $FlyDirection: 8, $Easing: { $Top: $JssorEasing$.$EaseInOutBack }, $ScaleVertical: 0.6, $Opacity: 2 },

            ];

            var options = {
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $AutoPlaySteps: 1,                                  //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
                $AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $PauseOnHover: 1,                               //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, default value is 1

                $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                $SlideDuration: 500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
                $SlideWidth: 960,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                $SlideHeight: 500,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
                $DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
                $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, default value is 1
                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

                $CaptionSliderOptions: {                            //[Optional] Options which specifies how to animate caption
                    $Class: $JssorCaptionSlider$,                   //[Required] Class to create instance to animate caption
                    $CaptionTransitions: _CaptionTransitions,       //[Required] An array of caption transitions to play caption, see caption transition section at jssor slideshow transition builder
                    $PlayInMode: 1,                                 //[Optional] 0 None (no play), 1 Chain (goes after main slide), 3 Chain Flatten (goes after main slide and flatten all caption animations), default value is 1
                    $PlayOutMode: 3                                 //[Optional] 0 None (no play), 1 Chain (goes before main slide), 3 Chain Flatten (goes before main slide and flatten all caption animations), default value is 1
                },

                $BulletNavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorBulletNavigator$,                       //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 0,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
                    $Lanes: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
                    $SpacingX: 10,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                    $SpacingY: 10,                                   //[Optional] Vertical space between each item in pixel, default value is 0
                    $Orientation: 1                                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
                },

                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 1,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
                }
            };
            var jssor_slider1 = new $JssorSlider$("slider1_container", options);
        });
		</script>
		
		
		<title>SOUNDSTORE</title>
</head>
<body>

	<div id="contenedor">
	<div id="encabezado"> 
		<div class="logo"><img src="../img/logo3.png" alt=""/></div>
		<div id="search">
			<form method="post" action="busqueda.php" name="busqueda">
			<div class="busqueda"><input type="text" placeholder="Buscar artista o disco" name="search" id="busqueda"/></div>
			<div class="enviar"><input type="image" src="../img/lupaverde2.png" width="25px" height="25px"/></div>
			<!--<div class="enviar"><input type="submit"/></div>-->
			</form>
		</div>
		
	</div>
			
		<div id="contenido">
			
				<div id="menu">
				<ul class="dropdown">
						<li><a href="../index.php" class="dir">HOME</a></li>
					<li><a href="carrito/carritodecompras.php" class="dir">Shop</a></li>
					<li><a href="productos.php" class="dir">PRODUCTOS</a>
					</li>
					
					<li><a href="cuenta.php" class="dir">MI CUENTA</a>
					<ul>
						
					</ul>
					</li>
					<li><a href="login.php" class="dir">ACCEDER/REGISTRARSE</a></li>
					<li><a href="about.php" class="dir">ABOUT</a></li>
					<?php
							if($_SESSION['admin']==1){
					?>
							<li><a href="admin/admin.php"class="dir">ADMINISTRADOR</a></li>
					<?php   }
					?>

				</ul>
				</div>
				<div id="resultados_busqueda">
					<div class="titulo3">NOSOTROS</div>
					<br>
					Para poder llegar a todos lados, vendemos por internet!
					<br>
					Por cualquier consulta respecto a tus datos de usuario o sobre algun disco que no este disponible contactate a:
					<br>
					consultas@soundstore.com
					<br>
					Descarga nuestro manual para utilizar la pagina:
					<br>
					<br>
					<div><input type='button' value='Manual De Usuario' name='Back2' onclick="location.href='../Manual de usuario.pdf'"/></div>
				<div class="boton_volver"><input type='button' value='Volver a la Pagina Principal' name='Back2' onclick="location.href='../index.php'"/></div>
				</div>

		</div>	
			
				
					
				
			
	
			<div id="footer">
				<div id="pie">
				SOUNDSTORE 2014 <br>
				PROGRAMACI&Oacute;N WEB <br>
				Gustavo Albornoz / Pilar Paradela
				</div>
				<div id="pie2">
				<div id="social">
				<div class="fb"><a href="http://www.facebook.com" target="_blank"><img src="../img/social/facebook.png" width="30px" height="30px" alt="fcbk"/></a></div>
				<div class="google"><a href="https://plus.google.com/" target="_blank"><img src="../img/social/googleplus.png" width="30px" height="30px" alt="fcbk"/></a></div>
				<div class="insta"><a href="http://www.instagram.com" target="_blank"><img src="../img/social/instagram.png" width="30px" height="30px" alt="fcbk"/></a></div>
				
				<div class="share"><a href="http://www.facebook.com" target="_blank"><img src="../img/social/share.png" width="30px" height="30px" alt="fcbk"/></a></div>
				<div class="tw"><a href="http://www.twitter.com" target="_blank"><img src="../img/social/twitter.png" width="30px" height="30px" alt="fcbk"/></a></div>
				<div class="you"><a href="http://www.youtube.com" target="_blank"><img src="../img/social/youtube.png" width="30px" height="30px" alt="fcbk"/></a></div>
				</div>
				</div>
			
			</div>
		
	</div>		
</body>
</html>