<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Summer Storage</title>
		
	</head>
	<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar" style="text-align:right;">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
       
                             
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a  href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home">Home</span></a></li>
        <li><g:link controller="User" action="contract"><span class="glyphicon glyphicon-file">Terms</span></g:link></li>
        <li><g:link controller="User" action="about"><span class="glyphicon glyphicon-grain">About</span></g:link></li>
        <li><g:link controller="User" action="contact"><span class="glyphicon glyphicon-comment">Contact</span></g:link></li>
        
      </ul>
      
    </div>
  </div>
</nav>
  <br/>
 
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    <h1>Helpful Links for Moving:</h1>
      <p>Car Rent<a href="https://www.uhaul.com/">
 		 <asset:image src="uhaullogo.png" alt="UHaul Link" style="width:100%;height:100%;border:0;"/>
		</a></p>
		<p>Car Rent<a href="https://www.enterprise.com/en/home.html">
 		 <asset:image src="enterpriselogo.png" alt="enterprise Link" style="width:100%;height:100%;border:0;"/>
		</a></p>
      <p>Best Mover<a href="https://www.thumbtack.com/mo/saint-louis/movers/">
 		 <asset:image src="thumbtacklogo.png" alt="thumbtack Link" style="width:100%;height:100%;border:0;"/>
		</a></p>
      
    </div>
    <div class="col-sm-8 text-left" style="text-align:center;"> 
     
				
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <asset:image src="1.jpeg" alt="New York" width="1200" height="700"/>
        <div class="carousel-caption">
          <h3>Share</h3>
          <p>Share your empty space with students in need.</p>
        </div>      
      </div>

      <div class="item">
        <asset:image src="2.jpg" alt="Chicago" width="1200" height="700"/>
        <div class="carousel-caption">
          <h3>Earn</h3>
          <p>Earn extra money in a simple way.</p>
        </div>      
      </div>
    
      <div class="item">
        <asset:image src="3.jpeg" alt="Los Angeles" width="1200" height="700"/>
        <div class="carousel-caption">
          <h3>Save</h3>
          <p>Save your time and money by making use of other people's space!</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
    </div>
    
    <div class="col-sm-2 sidenav">
   
		<div class="well">
       <g:form controller="User" action="login" >
					<div>
						<label>User Name: </label><input type="text" name="user"/><br>
						<label>Password: </label><input type="password" name="password"/>
						<br>
						<g:submitButton class="button" name="submitButton" value="Log in" />
					</div>
					
				</g:form>
			<br/>			
			</div>
		
      	<div class="well">
        <p>Don't have an account?</p>
       	<g:link controller="User" action="register">Sign up now!</g:link>
      	</div>
    </div>
  </div>
</div>

<br>
	
	
	
		
	
	</body>
	

</html>
