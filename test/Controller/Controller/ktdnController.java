package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.khachhangbo;

/**
 * Servlet implementation class ktdnController
 */
@WebServlet("/ktdnController")
public class ktdnController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ktdnController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			try {
				HttpSession session= request.getSession();
				khachhangbo khbo=new khachhangbo();
				
			   	String un=request.getParameter("TenDN");
			   	String pass=request.getParameter("Matkhau");
			    khachhangbean kh=khbo.ktdn(un, pass);
			   	if(kh!=null){
			   		session.setAttribute("dn", kh);
			   			   session.setAttribute("kt", (long)1);
			   			  
			   		   }else{
			   			   
			   			   session.setAttribute("kt", (long)0);
			   		   }
			   	RequestDispatcher rd= request.getRequestDispatcher("HtSach");
			    rd.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
