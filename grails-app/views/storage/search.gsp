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
        <li><g:link controller="User" action="contract"><span class="glyphicon glyphicon-file">Term</span></g:link></li>
        <li><g:link controller="User" action="about"><span class="glyphicon glyphicon-grain">About</span></g:link></li>
        <li><g:link controller="User" action="contact"><span class="glyphicon glyphicon-comment">Contact</span></g:link></li>
        <li><g:link controller="Storage" action="search" id="${session.user.id}" bean="${userInstance}">
        <span class="glyphicon glyphicon-search">Search</span></g:link></li>
        <li> <g:link controller="User" action="show" id="${session.user.id}" bean="${userInstance}"><span class="glyphicon glyphicon-user">My Account</span></g:link></li>
      </ul>
      
    </div>
  </div>
</nav>
  <br/>
  <g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
  <div id="create-storage" class="content scaffold-create" role="main">
 <h1>Search</h1>
 <button onClick="advancesearch('ad')" style="position:relative;left:50px">Advanced Search</button>
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
<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'price', 'error')}" style="text-align: left;">
	<label for="price">
		<g:message code="storage.price.label" default="Price per day" />
		
	</label>
	<g:field name="pricefrom" type="number decimal" /> - <g:field name="priceto" type="number decimal" />

</div>




<div id="ad" style="display:none">
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
</div>





<span class="glyphicon glyphicon-search" style="position:relative;left:50px;font-size:25px;"><g:submitButton name="search" value="search"/></span>

		</g:form>
		
		</div>
		
		<div id="list-storage" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="location" title="${message(code: 'storage.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="startDate" title="${message(code: 'storage.startDate.label', default: 'Start Date')}" />
						
						<g:sortableColumn property="endDate" title="${message(code: 'storage.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="area" title="${message(code: 'storage.area.label', default: 'Area')}" />
					
						<g:sortableColumn property="height" title="${message(code: 'storage.height.label', default: 'Height')}" />
					
						
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${storageInstanceList}" status="i" var="storageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${storageInstance.id}">${fieldValue(bean: storageInstance, field: "location")}</g:link></td>
					
						<td><g:formatDate format="MMM dd yyyy" date="${storageInstance.startDate}" /></td>
						
						<td><g:formatDate format="MMM dd yyyy" date="${storageInstance.endDate}" /></td>
					
						<td>${fieldValue(bean: storageInstance, field: "area")}</td>
					
						<td>${fieldValue(bean: storageInstance, field: "height")}</td>
					
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
