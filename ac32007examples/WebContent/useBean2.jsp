<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content=
"text/html; charset=iso-8859-1">
<title>Use Bean 2 example</title>
</head>
<body>

<p>bean is page</p>
<jsp:useBean
	id="myBean"
	scope="page"
	class="uk.ac.dundee.computing.aec.stores.testbean.aBean2" />
<p>The counter at the start is :	
<jsp:getProperty
	name="myBean"
	property="counter"/></p>
	
<% myBean.incrementcounter(); %>

<p>After Incrementing it is :
<jsp:getProperty
	name="myBean"
	property="counter"/></p>


</body>
</html>
