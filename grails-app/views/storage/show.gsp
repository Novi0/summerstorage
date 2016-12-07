
<%@ page import="summerstorage.Storage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'storage.label', default: 'Storage')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
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
        <span class="icon-bar"></span>
         <span class="icon-bar"></span>                    
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home">Home</span></a></li>
        <li><g:link controller="User" action="contract"><span class="glyphicon glyphicon-file">Terms</span></g:link></li>
        <li><g:link controller="User" action="about"><span class="glyphicon glyphicon-grain">About</span></g:link></li>
        <li><g:link controller="User" action="contact"><span class="glyphicon glyphicon-comment">Contact</span></g:link></li>
        <li><g:link controller="Storage" action="search" id="${session.user.id}" bean="${userInstance}">
        <span class="glyphicon glyphicon-search">Search</span></g:link></li>
        <li> <g:link controller="User" action="show" id="${session.user.id}" bean="${userInstance}"><span class="glyphicon glyphicon-user">My Account</span></g:link></li>
      </ul>
      
    </div>
  </div>
</nav>
		<div id="show-storage" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list storage">
			
				<g:if test="${storageInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="storage.user.label" default="User" /></span>
						<g:each in="${storageInstance.user}" var="u">
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
				</li>
				</g:if>
				
				<g:if test="${storageInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="storage.photo.label" default="Photo" /></span>
					
						<span class="property-value" aria-labelledby="photo-label"><g:fieldValue bean="${storageInstance}" field="photo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="storage.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${storageInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="storage.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate format="MMM dd yyyy" date="${storageInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="storage.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:fieldValue bean="${storageInstance}" field="area"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.height}">
				<li class="fieldcontain">
					<span id="height-label" class="property-label"><g:message code="storage.height.label" default="Height" /></span>
					
						<span class="property-value" aria-labelledby="height-label"><g:fieldValue bean="${storageInstance}" field="height"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.floorsUp}">
				<li class="fieldcontain">
					<span id="floorsUp-label" class="property-label"><g:message code="storage.floorsUp.label" default="Floors Up" /></span>
					
						<span class="property-value" aria-labelledby="floorsUp-label"><g:fieldValue bean="${storageInstance}" field="floorsUp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.locks}">
				<li class="fieldcontain">
					<span id="locks-label" class="property-label"><g:message code="storage.locks.label" default="Locks" /></span>
					
						<span class="property-value" aria-labelledby="locks-label"><g:fieldValue bean="${storageInstance}" field="locks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="storage.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${storageInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.climate}">
				<li class="fieldcontain">
					<span id="climate-label" class="property-label"><g:message code="storage.climate.label" default="Climate" /></span>
					
						<span class="property-value" aria-labelledby="climate-label"><g:formatBoolean boolean="${storageInstance?.climate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="storage.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${storageInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.heavyAllowed}">
				<li class="fieldcontain">
					<span id="heavyAllowed-label" class="property-label"><g:message code="storage.heavyAllowed.label" default="Heavy Allowed" /></span>
					
						<span class="property-value" aria-labelledby="heavyAllowed-label"><g:formatBoolean boolean="${storageInstance?.heavyAllowed}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="storage.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate format="MMM dd yyyy" date="${storageInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:storageInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${storageInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>