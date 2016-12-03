<%@ page import="summerstorage.Storage" %>


<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'photo', 'error')} required">
	<label for="photo">
		<g:message code="storage.photo.label" default="Photo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="photo" required="" value="${storageInstance?.photo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'location', 'error')} required">
	<label for="location">
		<g:message code="storage.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="location" required="" value="${storageInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="storage.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${storageInstance?.startDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="storage.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="area" type="number decimal" value="${storageInstance.area}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'height', 'error')} required">
	<label for="height">
		<g:message code="storage.height.label" default="Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="height" type="number decimal" value="${storageInstance.height}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'floorsUp', 'error')} required">
	<label for="floorsUp">
		<g:message code="storage.floorsUp.label" default="Floors Up" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="floorsUp" type="number" value="${storageInstance.floorsUp}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'locks', 'error')} required">
	<label for="locks">
		<g:message code="storage.locks.label" default="Locks" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="locks" type="number" value="${storageInstance.locks}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="storage.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" type="number decimal" value="${storageInstance.price}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'climate', 'error')} ">
	<label for="climate">
		<g:message code="storage.climate.label" default="Climate" />
		
	</label>
	<g:checkBox name="climate" value="${storageInstance?.climate}" />

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="storage.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" required="" value="${storageInstance?.type}" from="${["Basement", "Storage Locker", "Close Room", "Open Room" ] }"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'heavyAllowed', 'error')} ">
	<label for="heavyAllowed">
		<g:message code="storage.heavyAllowed.label" default="Heavy Allowed" />
		
	</label>
	<g:checkBox name="heavyAllowed" value="${storageInstance?.heavyAllowed}" />

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="storage.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${storageInstance?.endDate}"  />

</div>

