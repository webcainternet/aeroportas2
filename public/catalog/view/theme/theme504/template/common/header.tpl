<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=1260">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,500,700' rel='stylesheet' type='text/css'>

<link rel="stylesheet"  href="catalog/view/theme/theme504/js/fancybox/jquery.fancybox.css" media="screen" />
<link href="catalog/view/theme/theme504/stylesheet/livesearch.css" rel="stylesheet">
<link href="catalog/view/theme/theme504/stylesheet/photoswipe.css" rel="stylesheet">
<link href="catalog/view/theme/theme504/js/jquery.bxslider/jquery.bxslider.css" rel="stylesheet">
<link href="catalog/view/theme/theme504/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/theme504/stylesheet/superfish.css" rel="stylesheet">
<link href="catalog/view/theme/theme504/stylesheet/responsive.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/theme/theme504/js/common.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme504/js/tm-stick-up.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme504/js/jquery.unveil.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme504/js/jquery.bxslider/jquery.bxslider.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme504/js/fancybox/jquery.fancybox.pack.js"></script>
<script src="catalog/view/theme/theme504/js/elavatezoom/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme504/js/superfish.js" type="text/javascript"></script>
<!--video script-->
<script src="catalog/view/theme/theme504/js/jquery.vide.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme504/js/jquery.touchSwipe.min.js" type="text/javascript"></script>
<!--Green Sock-->
<script src="catalog/view/theme/theme504/js/greensock/jquery.gsap.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme504/js/greensock/TimelineMax.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme504/js/greensock/TweenMax.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme504/js/greensock/jquery.scrollmagic.min.js" type="text/javascript"></script>


<!--photo swipe-->
<script src="catalog/view/theme/theme504/js/photo-swipe/klass.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme504/js/photo-swipe/code.photoswipe.jquery-3.0.5.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme504/js/photo-swipe/code.photoswipe-3.0.5.min.js" type="text/javascript"></script>

<script src="catalog/view/theme/theme504/js/script.js" type="text/javascript"></script>

<!--custom script-->
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php // echo $google_analytics; ?>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-31733021-1', 'auto');
   ga('require', 'displayfeatures'); 
  ga('send', 'pageview');

</script>

</head>
<body class="<?php echo $class; ?>">
<!-- swipe menu -->
<div class="swipe">
	<div class="swipe-menu">
		<ul>
			
			<li><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><i class="fa fa-user"></i> <span><?php echo $text_account; ?></span></a></li>
			<?php if ($logged) { ?>
			<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
			<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
			<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
			<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
			<?php } else { ?>
			<li><a href="<?php echo $register; ?>"><i class="fa fa-user"></i> <?php echo $text_register; ?></a></li>
			<li><a href="<?php echo $login; ?>"><i class="fa fa-lock"></i><?php echo $text_login; ?></a></li>
			<?php } ?>
			<li><a href="<?php echo $wishlist; ?>" id="wishlist-total2" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span><?php echo $text_wishlist; ?></span></a></li>
			<li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span><?php echo $text_shopping_cart; ?></span></a></li>
			<li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span><?php echo $text_checkout; ?></span></a></li>
		</ul>
		<?php if ($maintenance == 0){ ?>
		<ul class="foot">
			<?php if ($informations) { ?>
			<?php foreach ($informations as $information) { ?>
			<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
			<?php } ?>
			<?php } ?>
		</ul>
		<?php } ?>
		<ul class="foot foot-1">
			<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
			<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
			<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		</ul>
		
		<ul class="foot foot-2">
			<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
			<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
			<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
			<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
		</ul>
		<ul class="foot foot-3">
			<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
			<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		</ul>
	</div>
</div>
<div id="pagetop">
<div class="shadow"></div>
<div class="toprow-1">
	<a class="swipe-control" href="#"><i class="fa fa-align-justify"></i></a>
</div>


<header>
	<div class="container">
		<div id="logo">
			<?php if ($logo) { ?>
			<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
			<?php } else { ?>
			<h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
			<?php } ?>
		</div>
		<nav id="top">
				<?php echo $currency; ?>
				<?php echo $language; ?>
				
				<div id="top-links" class="nav">
				<ul class="list-inline">
					<li class="first"><a href="<?php echo $home; ?>"><i class="fa fa-home hidden-md hidden-lg"></i><span class="hidden-sm"><?php echo $text_home; ?></span></a></li>
					<li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart hidden-md hidden-lg"></i> <span class="hidden-sm"><?php echo $text_wishlist; ?></span></a></li>
					<li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share hidden-md hidden-lg"></i> <span class="hidden-sm"><?php echo $text_checkout; ?></span></a></li>
				</ul>
				</div>
		</nav>
		<div class="box-right">
			<?php echo $cart; ?>
			<?php echo $search; ?>
			<ul class="soc-icon">
				<li><a href="https://www.facebook.com/AeroPortas"><i class="fa fa-facebook"></i></a></li>
				<li><a href="https://www.youtube.com/channel/UCtvnyjt3dxWRuTk3Nxy7jBg"><i class="fa fa-youtube"></i></a></li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
</header>

<?php if ($categories) { ?>
<div class="container">
	<div id="menu-gadget">
		<div id="menu-icon"><?php echo $text_category; ?></div>
		<?php if ($categories) {  echo $categories; } ?>
	</div>
</div>
<?php } ?>
<?php if ($categories) { ?>
<!--<script type="text/javascript">
	jQuery(document).ready(function(){
		if ($('body').width() > 990) { 
			$('.nav__primary').tmStickUp({correctionSelector: $('#menu_stick')});
		};
	});
</script>-->

</div>
<div id="pagemenu">
<div id="tm_menu" class="nav__primary">
	<div class="container">
		<div class="menu-shadow">
			<?php if ($categories) {  echo $categories; } ?>
			<?php /*
			<ul class="menu">
				<li style="float: right;background-color: #F69124;">
					<a href="http://www.aeroportasonline.com.br/" target="_blank">Loja Online</a>
				</li>
			</ul> */ ?>

			<div class="clear"></div>
		</div>
	</div>
</div>
</div>
<div style="background: #FFF;"><?php /* 872613 */ ?>

<div id="page">
<?php } ?>
<p id="back-top"> <a href="#top"><span></span></a> </p>

<div class="container">
	<div class="row">
		<div>
			<div class="col-sm-12" style="margin-top: 10px;">
				<div class="telefones">
					<div class="banner-home-loja">Loja 1</div>
					<div class="banner-home-endereco">Av. Bandeirantes, 4265, Aeroporto, SP</div>
					<div class="banner-home-titulo">bandeirantes@aeroportas.com.br</div>
					<div class="banner-home-telefone">(11) 5096-1803</div>
				</div>

				<div class="telefones">
					<div class="banner-home-loja">Loja 2</div>
					<div class="banner-home-endereco">Rua do Gasômetro, 360, Brás, SP</div>
					<div class="banner-home-titulo">gasometro@aeroportas.com.br</div>
					<div class="banner-home-telefone">(11) 3313-8942</div>
				</div>

				<div class="telefones">
					<div class="banner-home-loja">Loja 3</div>
					<div class="banner-home-endereco">Av. Salgado Filho, 1772, Guarulhos, SP</div>
					<div class="banner-home-titulo">guarulhos@aeroportas.com.br</div>
					<div class="banner-home-telefone">(11) 2382-5185</div>
				</div>

				<div class="telefones">
					<div class="banner-home-loja">Loja 4</div>
					<div class="banner-home-endereco">Rua do Gasômetro, 326, Brás, SP</div>
					<div class="banner-home-titulo">gasometro326@aeroportas.com.br</div>
					<div class="banner-home-telefone">(11) 3227-9747</div>
				</div>
<?php /*
				<div class="telefones" style="margin-right: 0px;">
					<div class="banner-home-loja">Loja 5</div>
					<div class="banner-home-endereco">Rua do Gasômetro, 218, Brás, SP</div>
					<div class="banner-home-titulo">gasometro218@aeroportas.com.br</div>
					<div class="banner-home-telefone">(11) 3227-1226</div>
				</div>
*/ ?>
			</div>
		</div>
	</div>
</div>
