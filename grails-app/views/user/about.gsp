<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>

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
        <li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home">Home</span></a></li>
        <li><g:link controller="User" action="contract"><span class="glyphicon glyphicon-file">Terms</span></g:link></li>
        <li class="active"><g:link controller="User" action="about"><span class="glyphicon glyphicon-grain">About</span></g:link></li>         
        <li><g:link controller="User" action="contact"><span class="glyphicon glyphicon-comment">Contact</span></g:link></li>
        
      </ul>
      
    </div>
  </div>
</nav>
  <div id="about" class="container text-center">
  <h1>About Us</h1>
  <p><em>We want to help!</em></p>
  <p>Founded in 2016 and based in Washington University in St. Louis, SummerStorage is a startup project focused on students’ need for affordable storage spaces. Right now, Students from WashU can acess to our site to search, request or create storing units.
  </p>
  <br>
  <p>Whether students are looking for a room to store clothes during summer break, a basement to store his/her bike during winter break, or just an easy way to make some extra cash, SummerStorage helps them to find the right place. With our vast first-hand experience of storage usage, SummerStorage is an easy way for students to save money from expensive storing companies and monetize their extra space. 
  </p>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <p class="text-center"><strong>Novi</strong></p><br>
      <a href="#demo" data-toggle="collapse">
        <asset:image  src="novi.png" class="img-circle person" alt="Random Name" style="width:255px; height:300px"/>
      </a>
      <div id="demo" class="collapse">
        <p>Web Developer</p>
        <p>First Year Dual Degree Student and like anime & computer games</p>
        <p>Computer Science Major</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Cancan</strong></p><br>
      <a href="#demo2" data-toggle="collapse">
       <asset:image  src="cancan.jpg" class="img-circle person" alt="Random Name"  style="width:255px; height:300px"/>
      </a>
      <div id="demo2" class="collapse">
        <p>Web Developer</p>
        <p>First Year Dual Degree Student</p>
        <p>Computer Science Major</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Noah</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
       <asset:image  src="noah.jpg" class="img-circle person" alt="Random Name"  style="width:255px; height:300px"/>
      </a>
      <div id="demo3" class="collapse">
        <p>Web Developer</p>
        <p>Senior and enjoy playing IM Basketball and Softball with his friends as well as watching soccer on the weekends.</p>
        <p>Systems Engineering and Computer Science major</p>
      </div>
    </div>
  </div>
</div>

</body>
</html>