<%@ page import="eyedencrypt.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="50" pattern="${userInstance.constraints.username.matches}" required="" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="100" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'confirmPassword', 'error')} required">
    <label for="confirmPassword">
        <g:message code="user.confirmPassword.label" default="Confirm Password"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="password" name="confirmPassword" required="" value="${confirmPassword}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="user.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" maxlength="50" value="${userInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" maxlength="80" value="${userInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'notifyMeOnLogin', 'error')} ">
	<label for="notifyMeOnLogin">
		<g:message code="user.notifyMeOnLogin.label" default="Notify Me On Login" />
		
	</label>
	<g:checkBox name="notifyMeOnLogin" value="${userInstance?.notifyMeOnLogin}" />
</div>

<sec:ifAnyGranted roles="ROLE_ADMIN">

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="user.createDate.label" default="Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createDate" precision="day"  value="${userInstance?.createDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emailValidated', 'error')} ">
	<label for="emailValidated">
		<g:message code="user.emailValidated.label" default="Email Validated" />
		
	</label>
	<g:checkBox name="emailValidated" value="${userInstance?.emailValidated}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />
</div>


<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
</div>

</sec:ifAnyGranted>

