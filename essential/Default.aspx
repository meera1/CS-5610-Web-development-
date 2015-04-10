<%@ Page Language="C#" %>

<script runat="server">
    
</script>

<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="homepage/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="homepage/css/style.css"> <!-- Resource style -->
	<script src="homepage/js/modernizr.js"></script> <!-- Modernizr -->
  	
	<title>Home Page</title>
</head>
<body>
<main id="cd-main-content">
	<section id="cd-intro">
		<!--<h1>Full Page Intro &amp; Navigation</h1>-->

		<header class="cd-header">
			<div id="cd-logo"><a href="#0"><img src="homepage/img/cd-logo.svg" alt="Logo"></a></div>
			<a class="cd-menu-trigger" href="#main-nav">Menu<span></span></a>
		</header>
		<div class="cd-blurred-bg"></div>
	</section> <!-- cd-intro -->
</main>

<div class="cd-shadow-layer"></div>

<nav id="main-nav">
	<ul>
		<li><a href="sitestatistics/" target="_blank">SiteStatistics</a></li>
    <li><a href="statistics/" target="_blank">Statistics</a></li>
    <li><a href="source/" target="_blank">Source</a></li>
    <li><a href="search/" target="_blank">Search</a></li>
    <li><a href="searchtree/" target="_blank">SearchTree</a></li>
    <li><a href="textview/" target="_blank">TextView</a></li>
    <li><a href="filelist.aspx" target="_blank">FileList</a></li>
    <li><a href="autofile.aspx" target="_blank">AutoFile</a></li>
    <li><a href="images/autoimage.aspx" target="_blank">Images</a></li>
    <li><a href="blog/" target="_blank">Blog</a></li>
    <li><a href="story/index.htm?../experiments/story.txt" target="_blank">
Experiments		</a></li>
    <li><a href="https://github.com/meera1/v4.0/" target="_blank">GitHub</a></li>
    
	</ul>
	<a href="#0" class="cd-close-menu">Close<span></span></a>
</nav>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="homepage/js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>
