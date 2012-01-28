<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
	<html>
		<head>
			<title>Wordpress Popup Plugin | WP-Demon</title>
			<link rel="stylesheet" type="text/css" href="css/style.css" />
			<link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
		</head>
		
	<body>
	
		<div class="container">
		
		<div class="header">
		
			<div class="header-left">
		
				<h2>Thanks for your purchase!</h2>
				<p>The immediate next step is to download the plugin. However, do take a look at the user manual and the support videos to understand how to install and configure the plugin.
				</p>
				<p>Questions? You may open a ticket at our <a href="http://support.wp-demon.com">support desk</a>.</p>
				<p>For support, you may also e-mail support@wp-demon.com, however, using the support system (creating a ticket) will be faster.</p>
			</div> <!--Header left closed-->
			
			<div class="header-right">
				<a href="download/<s:property value="pdt.tx" />">
				<center><img src="imgs/zip-icon.png" width="128" height="128" /></center>
				<center><h3>Download</h3></center>
				</a>
			</div> <!--Header right closed-->
			
			<div class="clr"></div>
			
		</div> <!--Header closed-->
		
		<div class="support-links">
		<br />
		<h3>Support Links</h3>
		<br />
			<div class="block">
				<center><img src="imgs/pdf-icon.png" width="128" height="128" />
				<p>Download User Manual</p></center>
			</div>
			
			<div class="block">
				<center><img src="imgs/video-icon.png" width="128" height="128" />
				<p>Installing the plugin</p></center>
			</div>
			
			<div class="block">
				<center><img src="imgs/video-icon.png" width="128" height="128" /></center>
				<center><p>Configuring the popup</p></center>
			</div>
			
			<div class="block">
				<center><img src="imgs/video-icon.png" width="128" height="128" />
				<p>Configuring the notification bar</p></center>
			</div>
			
			<div class="clr"></div>
			
		</div> <!--Closing support links-->
			
			
			
			
			
		</div>	<!--Contained closed-->
	
	</body>	
	</html>
