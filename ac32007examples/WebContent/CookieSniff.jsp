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
	scope="session"
	class="uk.ac.dundee.computing.aec.stores.testbean.aBean2" />


  
  <H2>Cookies</h2> 	
	<%
	String RHost=request.getRemoteHost();
	%>
	<p><%=RHost%></p>
	
  <table summary="" border="1">

<%
	Cookie TheseCookies[]=request.getCookies();
	Cookie NameCookie=null;
	String Value=null;
	String Name=null;
  String Domain=null;
  int MaxAge=0;
  String Version=null;
	if (TheseCookies !=null){
	
	   	for (int i=0;i <TheseCookies.length;i++){

				NameCookie=(Cookie)TheseCookies[i].clone();   
				Name=NameCookie.getName();
        Value=NameCookie.getValue();
        Domain=NameCookie.getDomain();
        MaxAge=NameCookie.getMaxAge();
        
				//System.out.println("Header: Name: "+Name);
        %>
        <tr>
        <td><%=Name%></td>	
        <td><%=Value%></td>	
        <td><%=Domain%></td>
        <td><%=MaxAge%></td>
        </tr>		
			 <%
		}
	}
  
 %>
 </table>
<% 
    NameCookie=new Cookie("R2NameCookie","Andy C");
	
		NameCookie.setMaxAge(365*24*60*60);
		NameCookie.setPath("/");
		NameCookie.setVersion(0);
		response.addCookie(NameCookie);
    
%>

</body>