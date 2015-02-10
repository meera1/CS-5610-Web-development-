<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tabs.aspx.cs" Inherits="experiments_loginToForum_tabs" %>

<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>jQuery UI Tabs Styling</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
<link rel="icon" type="image/ico" href="favicon.ico">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.23/themes/south-street/jquery-ui.css">
<link rel="stylesheet" href="css/jquery.bookmark.css">
<link rel="stylesheet" href="css/demo.css">
<style>
pre {
	clear: none;
}
div.showCode {
	margin-left: 8em;
}
.tabs {
	margin-top: 0.5em;
}
.ui-tabs { 
    padding: 0.2em; 
    background: url(http://code.jquery.com/ui/1.8.23/themes/south-street/images/ui-bg_highlight-hard_100_f5f3e5_1x100.png) repeat-x scroll 50% top #F5F3E5; 
    border-width: 1px; 
} 
.ui-tabs .ui-tabs-nav { 
    padding-left: 0.2em; 
    background: url(http://code.jquery.com/ui/1.8.23/themes/south-street/images/ui-bg_gloss-wave_100_ece8da_500x100.png) repeat-x scroll 50% 50% #ECE8DA; 
    border: 1px solid #D4CCB0;
    -moz-border-radius: 6px; 
    -webkit-border-radius: 6px; 
    border-radius: 6px; 
} 
.ui-tabs-nav .ui-state-active {
	border-color: #D4CCB0;
}
.ui-tabs .ui-tabs-panel { 
    background: transparent; 
    border-width: 0px; 
}
.ui-tabs-panel p {
	margin-top: 0em;
}
#minImage {
	margin-left: 6.5em;
}
#minImage img {
	padding: 2px;
	border: 2px solid #448844;
	vertical-align: bottom;
}

#tabs-nobg {
	padding: 0px;
}
#tabs-nobg .ui-tabs-nav {
	background: transparent;
	border-width: 0px 0px 1px 0px;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	border-radius: 0px;
}
#tabs-nobg .ui-tabs-panel {
	margin: 0em 0.2em 0.2em 0.2em;
}

#tabs-nohdr {
	padding: 0px;
	background: none;
	border-width: 0px;
}
#tabs-nohdr .ui-tabs-nav {
	padding-left: 0px;
	background: transparent;
	border-width: 0px 0px 1px 0px;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	border-radius: 0px;
}
#tabs-nohdr .ui-tabs-panel {
	background: #f5f3e5 url(http://code.jquery.com/ui/1.8.23/themes/south-street/images/ui-bg_highlight-hard_100_f5f3e5_1x100.png) repeat-x scroll 50% top;
	border-width: 0px 1px 1px 1px;
}

#tabs-min {
	background: transparent;
	border: none;
}
#tabs-min .ui-widget-header {
	background: transparent;
	border: none;
	border-bottom: 1px solid #c0c0c0;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	border-radius: 0px;
}
#tabs-min .ui-tabs-nav .ui-state-default {
	background: transparent;
	border: none;
}
#tabs-min .ui-tabs-nav .ui-state-active {
	background: transparent url(img/uiTabsArrow.png) no-repeat bottom center;
	border: none;
}
#tabs-min .ui-tabs-nav .ui-state-default a {
	color: #c0c0c0;
}
#tabs-min .ui-tabs-nav .ui-state-active a {
	color: #459e00;
}

#tabs-smaller .ui-tabs-nav li {
	margin-top: 0.6em;
	font-size: 80%;
}
#tabs-smaller .ui-tabs-nav li.ui-tabs-selected,
#tabs-smaller .ui-tabs-nav li.ui-state-active {
	margin-top: 0em;
	font-size: 100%;
}

#tabs-icons .ui-tabs-nav .ui-icon {
	display: inline-block;
}

#tabs-buttons .ui-tabs-nav {
	padding: 0em;
	background: transparent;
	border-width: 0px;
}
#tabs-buttons .ui-tabs-nav li {
	position: static;
	margin: 0px;
	border-bottom: 1px solid #327e04 !important;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	border-radius: 0px;
}
#tabs-buttons .ui-tabs-nav li:first-child {
	-moz-border-radius: 6px 0px 0px 6px;
	-webkit-border-radius: 6px 0px 0px 6px;
	border-radius: 6px 0px 0px 6px;
}
#tabs-buttons .ui-tabs-nav li:last-child {
	-moz-border-radius: 0px 6px 6px 0px;
	-webkit-border-radius: 0px 6px 6px 0px;
	border-radius: 0px 6px 6px 0px;
}
#tabs-buttons .ui-tabs-nav li.ui-tabs-selected {
	padding-bottom: 0px;
	border-bottom: 1px solid #d4ccb0 !important;
}

#tabs-centre .ui-tabs-nav {
	height: 2.35em;
	text-align: center;
}
#tabs-centre .ui-tabs-nav li {
	display: inline-block;
	float: none;
	top: 0px;
	margin: 0em;
}

#tabs-to-right .ui-tabs-nav {
	float: right;
	border-left: none;
	-moz-border-radius: 0px 6px 6px 0px;
	-webkit-border-radius: 0px 6px 6px 0px;
	border-radius: 0px 6px 6px 0px;
}
#tabs-to-right .tabs-background {
	height: 2.6em;
	background: #ece8da url(http://code.jquery.com/ui/1.8.23/themes/south-street/images/ui-bg_gloss-wave_100_ece8da_500x100.png) repeat-x scroll 50% 50%;
	border: 1px solid #d4ccb0;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
}

#tabs-bottom {
	position: relative;
	padding-bottom: 3em;
}
#tabs-bottom .ui-tabs-nav {
	position: absolute;
	left: 0.25em;
	right: 0.25em;
	bottom: 0.25em;
	padding: 0em 0.2em 0.2em;
}
#tabs-bottom .ui-tabs-nav li {
	top: -1px;
	border-top: none;
	border-bottom: 1px solid #ccc;
	-moz-border-radius: 0px 0px 4px 4px;
	-webkit-border-radius: 0px 0px 4px 4px;
	border-radius: 0px 0px 4px 4px;
}
#tabs-bottom .ui-tabs-nav li.ui-tabs-selected,
#tabs-bottom .ui-tabs-nav li.ui-state-active {
	top: -2px;
}

#tabs-left {
	position: relative;
	padding-left: 6.5em;
}
#tabs-left .ui-tabs-nav {
	position: absolute;
	left: 0.25em;
	top: 0.25em;
	bottom: 0.25em;
	width: 6em;
	padding: 0.2em 0 0.2em 0.2em;
}
#tabs-left .ui-tabs-nav li {
	right: 1px;
	width: 100%;
	border-right: none;
	border-bottom-width: 1px !important;
	-moz-border-radius: 4px 0px 0px 4px;
	-webkit-border-radius: 4px 0px 0px 4px;
	border-radius: 4px 0px 0px 4px;
	overflow: hidden;
}
#tabs-left .ui-tabs-nav li.ui-tabs-selected,
#tabs-left .ui-tabs-nav li.ui-state-active {
	border-right: 1px solid transparent;
}
#tabs-left .ui-tabs-nav li a {
	float: right;
	width: 100%;
	text-align: right;
}
#tabs-left > div {
	height: 35em;
}

#tabs-right {
	position: relative;
	padding-right: 6.5em;
}
#tabs-right .ui-tabs-nav {
	position: absolute;
	right: 0.25em;
	top: 0.25em;
	bottom: 0.25em;
	width: 6em;
	padding: 0.2em 0.2em 0.2em 0em;
}
#tabs-right .ui-tabs-nav li {
	width: 100%;
	border-left: none;
	border-bottom-width: 1px !important;
	-moz-border-radius: 0px 4px 4px 0px;
	-webkit-border-radius: 0px 4px 4px 0px;
	border-radius: 0px 4px 4px 0px;
	overflow: hidden;
}
#tabs-right .ui-tabs-nav li.ui-tabs-selected,
#tabs-right .ui-tabs-nav li.ui-state-active {
	left: -1px;
	border-left: 1px solid transparent;
}
#tabs-right .ui-tabs-nav li a {
	width: 100%;
}
#tabs-right > div {
	height: 33em;
}

#tabs-nested > .ui-tabs-panel {
	padding: 0em;
}
#tabs-nested-left {
	position: relative;
	padding-left: 6.5em;
}
#tabs-nested-left .ui-tabs-nav {
	position: absolute;
	left: 0.25em;
	top: 0.25em;
	bottom: 0.25em;
	width: 6em;
	padding: 0.2em 0 0.2em 0.2em;
}
#tabs-nested-left .ui-tabs-nav li {
	right: 1px;
	width: 100%;
	border-right: none;
	border-bottom-width: 1px !important;
	-moz-border-radius: 4px 0px 0px 4px;
	-webkit-border-radius: 4px 0px 0px 4px;
	border-radius: 4px 0px 0px 4px;
	overflow: hidden;
}
#tabs-nested-left .ui-tabs-nav li.ui-tabs-selected,
#tabs-nested-left .ui-tabs-nav li.ui-state-active {
	border-right: 1px solid transparent;
}
#tabs-nested-left .ui-tabs-nav li a {
	float: right;
	width: 100%;
	text-align: right;
}
#tabs-nested-left > div {
	height: 10em;
	overflow: auto;
}

#tabs-one-line .scroller {
	overflow: auto;
}
#tabs-one-line ul {
	width: 1660px;
}
</style>
<script src="js/modernizr-2.6.2.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.23/jquery-ui.min.js"></script>
<script src="js/jquery.bookmark.js"></script>
<script src="js/jquery.dateentry.js"></script>
<script src="js/jquery.chili-2.2.js"></script>
<script src="js/demo.js"></script>
<script>
    $(function () {
        $('article.tabs').tabs();
    });
</script>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
</head>
<body>
<header role="banner">
	<h1>jQuery UI Tabs Styling</h1>
</header>
<section>
<!-- Ad top -->
<ins class="adsbygoogle top" style="width:234px;height:60px" data-ad-client="ca-pub-1555315548255079" data-ad-slot="1375936143"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
<p>Have you wanted to do something a little different with your
	<a href="http://jqueryui.com/demos/tabs/">jQuery UI Tabs</a>?</p>
<ul>
	<li>Remove the <a href="#tabs-nobg">header background</a></li>
	<li>Remove the <a href="#tabs-nohdr">entire header</a></li>
	<li><a href="#tabs-min">Remove</a> most of the formatting</li>
	<li>Make the non-active tabs <a href="#tabs-smaller">smaller</a></li>
	<li>Add <a href="#tabs-icons">icons</a></li>
	<li>Tabs like <a href="#tabs-buttons">buttons</a></li>
	<li><a href="#tabs-centre">Centre</a> the tabs</li>
	<li>Align the tabs to the <a href="#tabs-to-right">right</a></li>
	<li>Move the tabs to the <a href="#tabs-bottom">bottom</a></li>
	<li>On the <a href="#tabs-left">left</a></li>
	<li>On the <a href="#tabs-right">right</a></li>
	<li><a href="#tabs-nested">Nested</a> horizontally and then vertically</li>
	<li>Have a <a href="#tabs-one-line">single line</a> of tabs that scrolls</li>
</ul>
<p>Most of these examples only involve CSS changes
	that can be added inline to your page to override the defaults.
	Note, however, that for the left and right side
	examples you need to explicitly set the tab content height and the tabs list width,
	and that for the single line of tabs you must specify the overall list width.</p>
<p style="text-align: center;">
	<span id="bookmark"></span>
</p>

<article id="tabs-plain" class="tabs">
	<ul>
		<li><a href="#tabs-plain-1">First</a></li>
		<li><a href="#tabs-plain-2">Second</a></li>
		<li><a href="#tabs-plain-3">Third</a></li>
	</ul>
	<div id="tabs-plain-1">
		<p>Default tabs appearance.</p>
	</div>
	<div id="tabs-plain-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-plain-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
</article>

<article id="tabs-nobg" class="tabs">
	<ul>
		<li><a href="#tabs-nobg-1">First</a></li>
		<li><a href="#tabs-nobg-2">Second</a></li>
		<li><a href="#tabs-nobg-3">Third</a></li>
	</ul>
	<div id="tabs-nobg-1">
		<p>Tabs without the list background.</p>
		<pre><code class="css">#tabs-nobg {
	padding: 0px;
}
#tabs-nobg .ui-tabs-nav {
	background: transparent;
	border-width: 0px 0px 1px 0px;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	border-radius: 0px;
}
#tabs-nobg .ui-tabs-panel {
	margin: 0em 0.2em 0.2em 0.2em;
}</code></pre>
	</div>
	<div id="tabs-nobg-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-nobg-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
</article>

<article id="tabs-nohdr" class="tabs">
	<ul>
		<li><a href="#tabs-nohdr-1">First</a></li>
		<li><a href="#tabs-nohdr-2">Second</a></li>
		<li><a href="#tabs-nohdr-3">Third</a></li>
	</ul>
	<div id="tabs-nohdr-1">
		<p>Tabs without the header background.</p>
		<pre><code class="css">#tabs-nohdr {
	padding: 0px;
	background: none;
	border-width: 0px;
}
#tabs-nohdr .ui-tabs-nav {
	padding-left: 0px;
	background: transparent;
	border-width: 0px 0px 1px 0px;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	border-radius: 0px;
}
#tabs-nohdr .ui-tabs-panel {
	background: #f5f3e5 url(http://code.jquery.com/ui/1.8.23/themes/south-street/images/ui-bg_highlight-hard_100_f5f3e5_1x100.png) repeat-x scroll 50% top;
	border-width: 0px 1px 1px 1px;
}</code></pre>
	</div>
	<div id="tabs-nohdr-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-nohdr-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
</article>

<article id="tabs-min" class="tabs">
	<ul>
		<li><a href="#tabs-min-1">First</a></li>
		<li><a href="#tabs-min-2">Second</a></li>
		<li><a href="#tabs-min-3">Third</a></li>
	</ul>
	<div id="tabs-min-1">
		<p>Minimalist tabs.</p>
		<pre><code class="css">#tabs-min {
	background: transparent;
	border: none;
}
#tabs-min .ui-widget-header {
	background: transparent;
	border: none;
	border-bottom: 1px solid #c0c0c0;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	border-radius: 0px;
}
#tabs-min .ui-tabs-nav .ui-state-default {
	background: transparent;
	border: none;
}
#tabs-min .ui-tabs-nav .ui-state-active {
	background: transparent url(img/uiTabsArrow.png) no-repeat bottom center;
	border: none;
}
#tabs-min .ui-tabs-nav .ui-state-default a {
	color: #c0c0c0;
}
#tabs-min .ui-tabs-nav .ui-state-active a {
	color: #459e00;
}</code></pre>
		<div id="minImage">Right click and save <img src="img/uiTabsArrow.png" alt="Minimalist arrow">.</div>
	</div>
	<div id="tabs-min-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-min-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
</article>

<article id="tabs-smaller" class="tabs">
	<ul>
		<li><a href="#tabs-smaller-1">First</a></li>
		<li><a href="#tabs-smaller-2">Second</a></li>
		<li><a href="#tabs-smaller-3">Third</a></li>
	</ul>
	<div id="tabs-smaller-1">
		<p>Tabs with smaller non-selected tabs.</p>
		<pre><code class="css">#tabs-smaller .ui-tabs-nav li {
	margin-top: 0.6em;
	font-size: 80%;
}
#tabs-smaller .ui-tabs-nav li.ui-tabs-selected,
#tabs-smaller .ui-tabs-nav li.ui-state-active {
	margin-top: 0em;
	font-size: 100%;
}</code></pre>
	</div>
	<div id="tabs-smaller-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-smaller-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
</article>

<article id="tabs-icons" class="tabs">
	<ul>
		<li><a href="#tabs-icons-1"><span class="ui-icon ui-icon-flag"></span> First</a></li>
		<li><a href="#tabs-icons-2"><span class="ui-icon ui-icon-key"></span> Second</a></li>
		<li><a href="#tabs-icons-3"><span class="ui-icon ui-icon-lightbulb"></span> Third</a></li>
	</ul>
	<div id="tabs-icons-1">
		<p>Tabs with icons.</p>
		<pre><code class="css">#tabs-icons .ui-tabs-nav .ui-icon {
	display: inline-block;
}</code></pre>
		<pre><code class="htmldemo">&lt;div id="tabs-icons" class="tabs"&gt;
	&lt;ul&gt;
		&lt;li&gt;&lt;a href="#tabs-icons-1"&gt;
			&lt;span class="ui-icon ui-icon-flag"&gt;&lt;/span&gt; First&lt;/a&gt;
		&lt;/li&gt;
		...
	&lt;/ul&gt;
	...
&lt;/div&gt;</code></pre>
	</div>
	<div id="tabs-icons-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-icons-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
</article>

<article id="tabs-buttons" class="tabs">
	<ul>
		<li><a href="#tabs-buttons-1">First</a></li>
		<li><a href="#tabs-buttons-2">Second</a></li>
		<li><a href="#tabs-buttons-3">Third</a></li>
	</ul>
	<div id="tabs-buttons-1">
		<p>Tabs like buttons.</p>
		<pre><code class="css">#tabs-buttons .ui-tabs-nav {
	padding: 0em;
	background: transparent;
	border-width: 0px;
}
#tabs-buttons .ui-tabs-nav li {
	position: static;
	margin: 0px;
	border-bottom: 1px solid #327e04 !important;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	border-radius: 0px;
}
#tabs-buttons .ui-tabs-nav li:first-child {
	-moz-border-radius: 6px 0px 0px 6px;
	-webkit-border-radius: 6px 0px 0px 6px;
	border-radius: 6px 0px 0px 6px;
}
#tabs-buttons .ui-tabs-nav li:last-child {
	-moz-border-radius: 0px 6px 6px 0px;
	-webkit-border-radius: 0px 6px 6px 0px;
	border-radius: 0px 6px 6px 0px;
}
#tabs-buttons .ui-tabs-nav li.ui-tabs-selected {
	padding-bottom: 0px;
	border-bottom: 1px solid #d4ccb0 !important;
}</code></pre>
	</div>
	<div id="tabs-buttons-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-buttons-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
</article>

<article id="tabs-centre" class="tabs">
	<ul>
		<li><a href="#tabs-centre-1">First</a></li>
		<li><a href="#tabs-centre-2">Second</a></li>
		<li><a href="#tabs-centre-3">Third</a></li>
	</ul>
	<div id="tabs-centre-1">
		<p>Centred tabs.</p>
		<pre><code class="css">#tabs-centre .ui-tabs-nav {
	height: 2.35em;
	text-align: center;
}
#tabs-centre .ui-tabs-nav li {
	display: inline-block;
	float: none;
	top: 0px;
	margin: 0em;
}</code></pre>
	</div>
	<div id="tabs-centre-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-centre-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
</article>

<article id="tabs-to-right" class="tabs">
	<ul>
		<li><a href="#tabs-to-right-1">First</a></li>
		<li><a href="#tabs-to-right-2">Second</a></li>
		<li><a href="#tabs-to-right-3">Third</a></li>
	</ul>
	<div class="tabs-background"></div>
	<div id="tabs-to-right-1">
		<p>Tabs aligned right.</p>
		<pre><code class="css">#tabs-to-right .ui-tabs-nav {
	float: right;
	border-left: none;
	-moz-border-radius: 0px 6px 6px 0px;
	-webkit-border-radius: 0px 6px 6px 0px;
	border-radius: 0px 6px 6px 0px;
}
#tabs-to-right .tabs-background {
	height: 2.6em;
	background: #ece8da url(http://code.jquery.com/ui/1.8.23/themes/south-street/images/ui-bg_gloss-wave_100_ece8da_500x100.png) repeat-x scroll 50% 50%;
	border: 1px solid #d4ccb0;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
}</code></pre>
		<p>This implementation also requires the addition of a background
			<em>div</em> before the tab content.</p>
		<pre><code class="htmldemo">&lt;div class="tabs"&gt;
	&lt;ul&gt;
		...
	&lt;/ul&gt;
	&lt;div class="tabs-background"&gt;&lt;/div&gt;
	...
&lt;/div&gt;</code></pre>
	</div>
	<div id="tabs-to-right-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-to-right-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
</article>

<article id="tabs-bottom" class="tabs">
	<ul>
		<li><a href="#tabs-bottom-1">First</a></li>
		<li><a href="#tabs-bottom-2">Second</a></li>
		<li><a href="#tabs-bottom-3">Third</a></li>
	</ul>
	<div id="tabs-bottom-1">
		<p>Tabs at the bottom.</p>
		<pre><code class="css">#tabs-bottom {
	position: relative;
	padding-bottom: 3em;
}
#tabs-bottom .ui-tabs-nav {
	position: absolute;
	left: 0.25em;
	right: 0.25em;
	bottom: 0.25em;
	padding: 0em 0.2em 0.2em;
}
#tabs-bottom .ui-tabs-nav li {
	border-top: none;
	border-bottom: 1px solid #ccc;
	-moz-border-radius: 0px 0px 4px 4px;
	-webkit-border-radius: 0px 0px 4px 4px;
	border-radius: 0px 0px 4px 4px;
}
#tabs-bottom .ui-tabs-nav li.ui-tabs-selected,
#tabs-bottom .ui-tabs-nav li.ui-state-active {
	top: -1px;
}</code></pre>
	</div>
	<div id="tabs-bottom-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-bottom-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
</article>

<article id="tabs-left" class="tabs">
	<ul>
		<li><a href="#tabs-left-1">First</a></li>
		<li><a href="#tabs-left-2">Second</a></li>
		<li><a href="#tabs-left-3">Third</a></li>
	</ul>
	<div id="tabs-left-1">
		<p>Tabs on the left.</p>
		<pre><code class="css">#tabs-left {
	position: relative;
	padding-left: 6.5em;
}
#tabs-left .ui-tabs-nav {
	position: absolute;
	left: 0.25em;
	top: 0.25em;
	bottom: 0.25em;
	width: 6em;
	padding: 0.2em 0 0.2em 0.2em;
}
#tabs-left .ui-tabs-nav li {
	right: 1px;
	width: 100%;
	border-right: none;
	border-bottom-width: 1px !important;
	-moz-border-radius: 4px 0px 0px 4px;
	-webkit-border-radius: 4px 0px 0px 4px;
	border-radius: 4px 0px 0px 4px;
	overflow: hidden;
}
#tabs-left .ui-tabs-nav li.ui-tabs-selected,
#tabs-left .ui-tabs-nav li.ui-state-active {
	border-right: 1px solid transparent;
}
#tabs-left .ui-tabs-nav li a {
	float: right;
	width: 100%;
	text-align: right;
}
#tabs-left > div {
	height: 35em;
}</code></pre>
	</div>
	<div id="tabs-left-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-left-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
</article>

<article id="tabs-right" class="tabs">
	<ul>
		<li><a href="#tabs-right-1">First</a></li>
		<li><a href="#tabs-right-2">Second</a></li>
		<li><a href="#tabs-right-3">Third</a></li>
	</ul>
	<div id="tabs-right-1">
		<p>Tabs on the right.</p>
		<pre><code class="css">#tabs-right {
	position: relative;
	padding-right: 6.5em;
}
#tabs-right .ui-tabs-nav {
	position: absolute;
	right: 0.25em;
	top: 0.25em;
	bottom: 0.25em;
	width: 6em;
	padding: 0.2em 0.2em 0.2em 0em;
}
#tabs-right .ui-tabs-nav li {
	width: 100%;
	border-left: none;
	border-bottom-width: 1px !important;
	-moz-border-radius: 0px 4px 4px 0px;
	-webkit-border-radius: 0px 4px 4px 0px;
	border-radius: 0px 4px 4px 0px;
	overflow: hidden;
}
#tabs-right .ui-tabs-nav li.ui-tabs-selected,
#tabs-right .ui-tabs-nav li.ui-state-active {
	left: -1px;
	border-left: 1px solid transparent;
}
#tabs-right .ui-tabs-nav li a {
	width: 100%;
}
#tabs-right > div {
	height: 33em;
}</code></pre>
	</div>
	<div id="tabs-right-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-right-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
</article>

<article id="tabs-nested" class="tabs">
	<ul>
		<li><a href="#tabs-nested-1">First</a></li>
		<li><a href="#tabs-nested-2">Second</a></li>
		<li><a href="#tabs-nested-3">Third</a></li>
	</ul>
	<div id="tabs-nested-1">
		<article id="tabs-nested-left" class="tabs">
			<ul>
				<li><a href="#tabs-nested-left-1">First</a></li>
				<li><a href="#tabs-nested-left-2">Second</a></li>
				<li><a href="#tabs-nested-left-3">Third</a></li>
			</ul>
			<div id="tabs-nested-left-1">
				<p>Nested tabs, horizontal then vertical.</p>
				<pre><code class="css">#tabs-nested > .ui-tabs-panel {
	padding: 0em;
}
#tabs-nested-left {
	position: relative;
	padding-left: 6.5em;
}
#tabs-nested-left .ui-tabs-nav {
	position: absolute;
	left: 0.25em;
	top: 0.25em;
	bottom: 0.25em;
	width: 6em;
	padding: 0.2em 0 0.2em 0.2em;
}
#tabs-nested-left .ui-tabs-nav li {
	right: 1px;
	width: 100%;
	border-right: none;
	border-bottom-width: 1px !important;
	-moz-border-radius: 4px 0px 0px 4px;
	-webkit-border-radius: 4px 0px 0px 4px;
	border-radius: 4px 0px 0px 4px;
	overflow: hidden;
}
#tabs-nested-left .ui-tabs-nav li.ui-tabs-selected,
#tabs-nested-left .ui-tabs-nav li.ui-state-active {
	border-right: 1px solid transparent;
}
#tabs-nested-left .ui-tabs-nav li a {
	float: right;
	width: 100%;
	text-align: right;
}
#tabs-nested-left > div {
	height: 10em;
	overflow: auto;
}</code></pre>
			</div>
			<div id="tabs-nested-left-2">
				<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
					felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
			</div>
			<div id="tabs-nested-left-3">
				<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
					pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
			</div>
		</article>
	</div>
	<div id="tabs-nested-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-nested-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
</article>

<article id="tabs-one-line" class="tabs">
	<div class="scroller">
		<ul>
			<li><a href="#tabs-one-line-1">First of eight tabs</a></li>
			<li><a href="#tabs-one-line-2">Second of eight tabs</a></li>
			<li><a href="#tabs-one-line-3">Third of eight tabs</a></li>
			<li><a href="#tabs-one-line-4">Fourth of eight tabs</a></li>
			<li><a href="#tabs-one-line-5">Fifth of eight tabs</a></li>
			<li><a href="#tabs-one-line-6">Sixth of eight tabs</a></li>
			<li><a href="#tabs-one-line-7">Seventh of eight tabs</a></li>
			<li><a href="#tabs-one-line-8">Eighth of eight tabs</a></li>
		</ul>
	</div>
	<div id="tabs-one-line-1">
		<p>Tabs on a single line.</p>
		<pre><code class="css">#tabs-one-line .scroller {
	overflow: auto;
}
#tabs-one-line ul {
	width: 1660px;
}</code></pre>
		<p>This implementation also requires the addition of a <em>div</em>
			wrapper around the tabs <em>ul</em>.</p>
		<pre><code class="htmldemo">&lt;div class="tabs"&gt;
	&lt;div class="scroller"&gt;
		&lt;ul&gt;
			...
		&lt;/ul&gt;
	&lt;/div&gt;
	...
&lt;/div&gt;</code></pre>
	</div>
	<div id="tabs-one-line-2">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-one-line-3">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
	<div id="tabs-one-line-4">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-one-line-5">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
	<div id="tabs-one-line-6">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
	<div id="tabs-one-line-7">
		<p>Pellentesque ac elit et nulla posuere convallis quis ut dolor. Pellentesque egestas
			pellentesque blandit. Morbi quis sapien nec lacus consectetur vestibulum.</p>
	</div>
	<div id="tabs-one-line-8">
		<p>Nunc eleifend iaculis nibh, sed semper nisl feugiat nec. Duis pretium,
			felis nec ornare posuere, leo erat ullamcorper nisl, a lacinia dolor urna vel quam!</p>
	</div>
</article>
</section>
<!-- Ad mid -->
<ins class="adsbygoogle mid" style="width:728px;height:90px" data-ad-client="ca-pub-1555315548255079" data-ad-slot="5806135743"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
<footer>
<p>Contact <a href="index.html">Keith Wood</a> at kbwood{at}iinet.com.au 
	with comments or suggestions.</p>
<hr>
<p>
	&copy; 2010-13, Keith Wood
	<a id="valid" href="http://validator.w3.org/check?uri=http://keith-wood.name/uiTabs.html">
		<img src="img/html5-small.png" alt="Valid HTML 5"></a>
</p>
</footer>
<script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
    var pageTracker = _gat._getTracker("UA-4715900-1");
    pageTracker._initData();
    pageTracker._trackPageview();
</script>
</body>
</html>
