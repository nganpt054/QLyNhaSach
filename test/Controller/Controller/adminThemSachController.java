package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class adminThemSachController
 */
@WebServlet("/adminThemSachController")
public class adminThemSachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminThemSachController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session= request.getSession();
			String masach = request.getParameter("MaSach");
			String tensach = request.getParameter("TenSach");
			String tacgia = request.getParameter("TacGia");
			String gia=request.getParameter("Gia");
			int gia1=(int) Long.parseLong(gia);
			String anh= request.getParameter("Anh");
			String maloai = request.getParameter("MaLoai");
			sachbo sbo = new sachbo();
			sbo.getthemsach(masach, tensach, tacgia, gia1, anh, maloai);
			response.sendRedirect("adminSachController");
		} catch (Exception e) {
			// TODO: handle exception
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
