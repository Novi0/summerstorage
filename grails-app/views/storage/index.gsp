<%@ page import="summerstorage.Storage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'storage.label', default: 'Storage')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<script>
		function advancesearch(id) {
	        document.getElementById(id).style.display = 'inline'; 
	    }
	    
		</script>
	</head>
	<body>
		<!--  <a href="#list-storage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li> <g:link controller="User" action="show" id="${session.user.id}" bean="${userInstance}">My Account</g:link></li>
			</ul>
		</div>-->
		<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar" style="text-align:right;">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
         <span class="icon-bar"></span>                    
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home">Home</span></a></li>
        <li><a href="#"><span class="glyphicon glyphicon-file">Terms</span></a></li>
        <li><a href="#"><span class="glyphicon glyphicon-grain">About</span></a></li>
        <li><g:link controller="Storage" action="search" id="${session.user.id}" bean="${userInstance}">
        <span class="glyphicon glyphicon-search">Search</span></g:link></li>
        <li><a href="#"><span class="glyphicon glyphicon-comment">Contact</span></a></li>
        <li> <g:link controller="User" action="show" id="${session.user.id}" bean="${userInstance}"><span class="glyphicon glyphicon-user">My Account</span></g:link></li>
      </ul>
      
    </div>
  </div>
</nav>
  <br/>
  
  <div id="create-storage" class="content scaffold-create" role="main">
 <h1><span class="glyphicon glyphicon-search">Search</span></h1>
 
		</div>
		
		<div id="list-storage" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="photo" title="${message(code: 'storage.photo.label', default: 'Photo')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'storage.location.label', default: 'Location')}" />
						
						<g:sortableColumn property="type" title="${message(code: 'storage.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="startDate" title="${message(code: 'storage.startDate.label', default: 'Start Date')}" />
						
						<g:sortableColumn property="endDate" title="${message(code: 'storage.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="area" title="${message(code: 'storage.area.label', default: 'Area')}" />
					
						<g:sortableColumn property="height" title="${message(code: 'storage.height.label', default: 'Height')}" />
					
						<g:sortableColumn property="floorsUp" title="${message(code: 'storage.floorsUp.label', default: 'Floors Up')}" />
						
						<g:sortableColumn property="locks" title="${message(code: 'storage.locks.label', default: 'locks')}" />
						
						<g:sortableColumn property="climate" title="${message(code: 'storage.climate.label', default: 'Climate Controlled')}" />
						
						<g:sortableColumn property="heavyAllowed" title="${message(code: 'storage.heavyAllowed.label', default: 'Heavy Allowed')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${storageInstanceList}" status="i" var="storageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${storageInstance.id}">${fieldValue(bean: storageInstance, field: "photo")}</g:link></td>
					
						<td>${fieldValue(bean: storageInstance, field: "location")}</td>
						
						<td>${fieldValue(bean: storageInstance, field: "type")}</td>
					
						<td><g:formatDate format="MMM dd yyyy" date="${storageInstance.startDate}" /></td>
						
						<td><g:formatDate format="MMM dd yyyy" date="${storageInstance.endDate}" /></td>
					
						<td>${fieldValue(bean: storageInstance, field: "area")}</td>
					
						<td>${fieldValue(bean: storageInstance, field: "height")}</td>
					
						<td>${fieldValue(bean: storageInstance, field: "floorsUp")}</td>
						
						<td>${fieldValue(bean: storageInstance, field: "locks")}</td>
						
						<td>${fieldValue(bean: storageInstance, field: "climate")}</td>
						
						<td>${fieldValue(bean: storageInstance, field: "heavyAllowed")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${storageInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>