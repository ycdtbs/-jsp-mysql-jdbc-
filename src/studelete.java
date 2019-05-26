

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tools.DBUtil;

/**
 * Servlet implementation class studelete
 */
@WebServlet("/studelete")
public class studelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public studelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String id=request.getParameter("sid");
		String sql="UPDATE student SET flag='1'WHERE id='"+id+"'";
		DBUtil db=DBUtil.getDB();
		int num=db.update(sql);
		if(num>0) {
			System.out.println("³É¹¦");
			
			String a="cuowu";
			request.setAttribute("key",a);
			request.getRequestDispatcher("tables.jsp").forward(request,response);
		}else {
			System.out.println("Ê§°Ü");
			response.sendRedirect("tables.jsp");
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
