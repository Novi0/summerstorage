<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Summer Storage</title>
		
	</head>
	<body>
		
		
		
		<div id="page-body" role="main">
			
			<br/>
			
				<g:form controller="User" action="login" style="padding-left:300px">
				<p>
        	
       				 
       				 
      				Don't have an account?</p>
       				 <g:link controller="User" action="register">Sign up now!</g:link>
					<div>
						<label>User Name: </label><input type="text" name="user"/><br>
						<label>Password: </label><input type="password" name="password"/>
						<br>
						<g:submitButton class="button" name="submitButton" value="Log in" />
					</div>
					
				</g:form>
			
			
		</div>
	</body>
</html>
