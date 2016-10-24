
<%@ page import="summerstorage.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				
			</ul>
			<g:actionSubmit value="New Storage" action="createStorage"/>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
		
			
				<g:if test="${userInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="user.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="name"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${userInstance?.userEmail}">
				<li class="fieldcontain">
					<span id="userEmail-label" class="property-label"><g:message code="user.userEmail.label" default="User Email" /></span>
					
						<span class="property-value" aria-labelledby="userEmail-label"><g:fieldValue bean="${userInstance}" field="userEmail"/></span>
					
				</li>
				</g:if>
			
		
			
				<g:if test="${userInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="user.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${userInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="user.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${userInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.selfie}">
				<li class="fieldcontain">
					<span id="selfie-label" class="property-label"><g:message code="user.selfie.label" default="Selfie" /></span>
					
						<span class="property-value" aria-labelledby="selfie-label"><g:fieldValue bean="${userInstance}" field="selfie"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.storage}">
				<li class="fieldcontain">
					<span id="storage-label" class="property-label"><g:message code="user.storage.label" default="Storage" /></span>
					
						<g:each in="${userInstance.storage}" var="s">
						<span class="property-value" aria-labelledby="storage-label"><g:link controller="storage" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
				<g:else>No Storage</g:else>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure? This will permanently delete your account')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
