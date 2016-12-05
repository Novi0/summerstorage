
<%@ page import="summerstorage.Storage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'storage.label', default: 'Storage')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style>
	
		</style>
	</head>
	<body>
		<a href="#list-storage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li> <g:link controller="User" action="show" id="${session.user.id}" bean="${userInstance}">My Account</g:link></li>
			</ul>
		</div>
		<g:form action = "search" method="GET">
		<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'location', 'error')}" style="text-align: left;">
	<label for="location">
		<g:message code="storage.location.label" default="Street Address" />
		
	</label>
	<g:textField name="location" value="${storageInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'distance', 'error')} required">
	<label for="distance">
		<g:message code="storage.distance.label" default="Max Distance (Miles)" />
	</label>
		<g:field name="distance" type="number decimal" />

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="storage.startDate.label" default="Start Date" />
	</label>
	<g:datePicker name="startDate" precision="day"   />

</div>
<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'endDate', 'error')}">
	<label for="endDate">
		<g:message code="storage.endDate.label" default="End Date" />
	</label>
	<g:datePicker name="endDate" precision="day" />

</div>


<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'floorsUp', 'error')}" style="text-align: left;">
	<label for="floorsUp">
		<g:message code="storage.floorsUp.label" default="Floors Up" />
	</label>
	<g:field name="floorsUp" type="number" />

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'locks', 'error')}" style="text-align: left;">
	<label for="locks">
		<g:message code="storage.locks.label" default="Locks" />
		
	</label>
	<g:field name="locks" type="number"  />

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'price', 'error')}" style="text-align: left;">
	<label for="price">
		<g:message code="storage.price.label" default="Price" />
		
	</label>
	<g:field name="pricefrom" type="number decimal" /> - <g:field name="priceto" type="number decimal" />

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'climate', 'error')}" style="text-align: left;">
	<label for="climate">
		<g:message code="storage.climate.label" default="Climate" />
		
	</label>
	<g:checkBox name="climate" />

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'type', 'error')}" style="text-align: left;">
	<label for="type">
		<g:message code="storage.type.label" default="Type" />
		
	</label>
	<g:select name="type" required="" from="${["All", "Basement", "Storage Locker", "Close Room", "Open Room" ] }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'heavyAllowed', 'error')}" style="text-align: left;">
	<label for="heavyAllowed">
		<g:message code="storage.heavyAllowed.label" default="Heavy Allowed" />
		
	</label>
	<g:checkBox name="heavyAllowed"  />

</div>

<g:submitButton name="search" value="search"/>
		</g:form>
		<div id="list-storage" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="photo" title="${message(code: 'storage.photo.label', default: 'Photo')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'storage.location.label', default: 'Street Address')}" />
						
						<g:sortableColumn property="distance" title="${message(code: 'storage.distance.label', default: 'Distance (Miles)')}" />
						
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
						
						<td>${fieldValue(bean: storageInstance, field: "distance")}</td>
						
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
