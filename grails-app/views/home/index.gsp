<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Eyed Encrypt Server</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 2em 2em 2em;
				height:200%;
				width:100%;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}
			
			#menu-list ul {
				margin-left:25%;
				margin-right:25%;
				list-style-position: inside;
			}

			#menu-list li {
				line-height: 2;				
				list-style: none;
				list-style-position: inside;
				margin: 0.25em 0;
			}
			
			#menu-list ul li a {
			
				-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
				-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
				box-shadow:inset 0px 1px 0px 0px #ffffff;
				background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf));
				background:-moz-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
				background:-webkit-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
				background:-o-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
				background:-ms-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
				background:linear-gradient(to bottom, #ededed 5%, #dfdfdf 100%);
				filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf',GradientType=0);
				background-color:#ededed;
				-moz-border-radius:6px;
				-webkit-border-radius:6px;
				border-radius:6px;
				border:1px solid #dcdcdc;
				display:inline-block;
				cursor:pointer;
				color:#777777;
				font-family:arial;
				font-size:15px;
				font-weight:bold;
				padding:6px 24px;
				text-decoration:none;
				text-shadow:0px 1px 0px #ffffff;
				text-align:center;				
				width:50%
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="page-body" role="main">
			<sec:ifNotLoggedIn>
				<div id="menu-list">
					
					<ul>					
						<li><g:link controller="Login">Login</g:link></li>
						<li><g:link controller="User" action="create">Register</g:link></li>
											
					</ul>
				</div>
			</sec:ifNotLoggedIn>
		</div>
	</body>
</html>
