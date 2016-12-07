<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'storage.label', default: 'Storage')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
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
		<div id="create-storage" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${storageInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${storageInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:storageInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}"/>
					
				</fieldset>
			</g:form>
		</div>
	</body>
</html>