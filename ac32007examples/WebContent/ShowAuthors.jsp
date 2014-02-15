<%@page import="uk.ac.dundee.computing.aec.stores.AuthorStore"%>
<%@page import="java.util.*"%>

<jsp:useBean
	id="Author"
	scope="request"
	class="uk.ac.dundee.computing.aec.stores.AuthorStore" />

<p>Author is  <%=Author.getname()%>
<ul>
<li>Tel <%=Author.gettel()%></li>
</ul>




</p>
<h2>List of Authors</h2>
<%
List<AuthorStore> Authors = (List<AuthorStore>)request.getAttribute("Authors");
Iterator<AuthorStore> iterator;
iterator = Authors.iterator();   
while (iterator.hasNext()){
	Author = (AuthorStore)iterator.next();
	
%>
<p>Author is  <%=Author.getname()%>
<ul>
<li>Tel <%=Author.gettel()%></li>
</ul>
</p>
<%
}
%>

 --%>