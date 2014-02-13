package uk.ac.dundee.computing.aec.servlets;
import uk.ac.dundee.computing.aec.stores.*;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(
		urlPatterns = { 
				"/Author", 
				"/Author/*"
		}
		)


public class ViewTest extends HttpServlet {

   
    public void init(ServletConfig conf) throws ServletException {
    // Called once when the servlet is loaded, must make call to the super class
		super.init(conf);
    }
    
    
   protected List<AuthorStore> MakeList(){
      List <AuthorStore> Authors =  new LinkedList<AuthorStore>();
      AuthorStore au= new AuthorStore();
      au.setname("Jane");
      au.settel("01382 345787");
      Authors.add(au);
      au=new AuthorStore();
      au.setname("Bill");
      au.settel("01381 346755");
      Authors.add(au);
      au=new AuthorStore();
      au.setname("James");
      au.settel("015152 346755");
      Authors.add(au);
      return Authors;
   }
    
    protected void doGet (HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
	// Called whenever a GET request comes in for this servlet
	// Req has details of the request
	// res is the output stream
   	AuthorStore au=new AuthorStore();
    au.setname("Andy");
    au.settel("01382 345078");
	request.setAttribute("Author", au);
	
	HttpSession session=request.getSession();
	AuthorStore aus=(AuthorStore)session.getAttribute("Author");
    if (aus==null)
	   aus=new AuthorStore();
	aus.setname("Tony");
	aus.settel("0151 526 8797");
	session.setAttribute("Author", aus);

    List<AuthorStore> Authors=MakeList();
    request.setAttribute("Authors", Authors);
    
    
    RequestDispatcher rd=request.getRequestDispatcher("/ShowAuthors.jsp");
	rd.forward(request,response);
    }

}
