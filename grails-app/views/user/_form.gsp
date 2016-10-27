<%@ page import="summerstorage.User" %>


<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userInstance?.name}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userEmail', 'error')} required">
	<label for="userEmail">
		<g:message code="user.userEmail.label" default="User Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="userEmail" required="" value="${userInstance?.userEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="user.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" required="" value="${userInstance?.phone}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'selfie', 'error')} required">
	<label for="selfie">
		<g:message code="user.selfie.label" default="Selfie" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="selfie" required="" value="${userInstance?.selfie}"/>
	

</div>



