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
 * Servlet implementation class adminSuaKHController
 */
@WebServlet("/adminSuaKHController")
public class adminSuaKHController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminSuaKHController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			HttpSession session=request.getSession();
			response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8"); 
				String makh=request.getParameter("maKH");
				long makh1=Long.parseLong(makh);
			  	String HotenKH=request.getParameter("HotenKH");
				String Diachi=request.getParameter("Diachi");
				String Dienthoai=request.getParameter("Dienthoai");
				String Email=request.getParameter("Email");
				String TenDN=request.getParameter("TenDN");
				String Matkhau=request.getParameter("Matkhau");
				khachhangbo kh=new khachhangbo();
				khachhangbean checkkh=kh.ktkh(TenDN);
				if (checkkh==null) {
					kh.getsuaKH(HotenKH, Diachi, Dienthoai, Email, TenDN, Matkhau, makh1);
					RequestDispatcher rd= request.getRequestDispatcher("adminKHController");
				    rd.forward(request, response);
				}
				else {
					
					RequestDispatcher rd= request.getRequestDispatcher("adminSuaKH.jsp");
				    rd.forward(request, response);
				}
				
				
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
