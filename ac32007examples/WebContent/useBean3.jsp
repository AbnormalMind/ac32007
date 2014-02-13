<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content=
"text/html; charset=iso-8859-1">
<title>Examining page and request scope with included pages </title>
</head>
<body>
<jsp:useBean
	id="myBean"
	scope="request"
	class="uk.ac.dundee.computing.aec.stores.testbean.aBean2" />
<p>Count at start:
<jsp:getProperty
	name="myBean"
	property="counter"/></p>
	
<% myBean.incrementcounter(); %>

<p>After initial increment
<jsp:getProperty
	name="myBean"
	property="counter"/></p>

<jsp:include
	page="/reset.jsp" />
	
<p>After reset has been included
<jsp:getProperty
	name="myBean"
	property="counter"/></p>

<% myBean.incrementcounter(); %>

<p>After final increment
<jsp:getProperty
	name="myBean"
	property="counter"/>
	</p>
</body>
</html>
