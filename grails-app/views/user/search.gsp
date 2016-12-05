<%@ page import="summerstorage.User" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<fieldset class="form">
    			<g:form action="search" method="GET">
        			<div class="fieldcontain">
            			<label for="query">Search for Users:</label>
            			<input name="name" type="text" value="${params?.name}"/>
            			<input name="selfie" type="text" value = "${params?.selfie}"/>
            			<g:submitButton class="button" name="submitButton" value="search" />
        			</div>
    			</g:form>
			</fieldset>
			<table>
			<thead>
					<tr>
					
								
						<g:sortableColumn property="name" title="${message(code: 'user.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="userEmail" title="${message(code: 'user.userEmail.label', default: 'User Email')}" />
									
						<g:sortableColumn property="phone" title="${message(code: 'user.phone.label', default: 'Phone')}" />
					
						<g:sortableColumn property="selfie" title="${message(code: 'user.selfie.label', default: 'Facebook URL')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "name")}</g:link></td>
																
						<td>${fieldValue(bean: userInstance, field: "userEmail")}</td>
										
						<td>${fieldValue(bean: userInstance, field: "phone")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "selfie")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
