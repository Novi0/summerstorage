<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
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
        <li><g:link controller="User" action="about"><span class="glyphicon glyphicon-grain">About</span></g:link></li>         
        <li class="active"><g:link controller="User" action="contact"><span class="glyphicon glyphicon-comment">Contact</span></g:link></li>
        
      </ul>
      
    </div>
  </div>
</nav>
  
  <div id="contact" class="container">
  <h1 class="text-center">Contact</h1>
  <p class="text-center"><em>Have questions or suggestions? Send us an email!</em></p>

  <div class="content scaffold-create">
    <div class="col-md-4">
      <p>Advice? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>St.Louis, US</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +1 2333333333</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: 2016summerstorage@gmail.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
  <div id="map" style="width:80%;height:400px;background:yellow"></div>
  <script>
function myMap() {
    var mapOptions = {
        center: new google.maps.LatLng(38.6488, -90.3108),
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.HYBRID
    }
var map = new google.maps.Map(document.getElementById("map"), mapOptions);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9LpCWiC7r0F88knRA3NSmrSLCRegC1OE&callback=myMap"></script>
  <br>
  </div>
  
</body>
</html>