<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<!--  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		
		-->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<title>Welcome to Sumrage</title>
		<g:layoutHead/>
	</head>
	<body>
	
		<div id="washuLogo" role="banner" style="padding: 1rem;background-color: #004d1a">
	<!--<asset:image src="washulogo.png" style="height:100px;"/><span style="position:relative;left:30%;font-size:45px;color:#f2f2f2;">Sumrage</span>-->
	<asset:image src="nav.jpeg" style="height:100%;width:100%;"/>
	
  </div>
 
  <g:layoutBody/>
   
		<div id="footer" role="contentinfo" style="position:relative;bottom:0;left:0;right:0;padding: 1rem;background-color: #004d1a"><footer class="container-fluid text-center">
  <p style="color:#f2f2f2">CopyRight@Sumrage</p>
  </footer></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
