

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tools.DBUtil;

/**
 * Servlet implementation class updateServlet
 */
@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String updatestuid=request.getParameter("updatestuid");
		String updatestuname=request.getParameter("updatestuname");
		String updatestusex=request.getParameter("updatestusex");
		String updatestuclass=request.getParameter("updatestuclass");
		DBUtil db=DBUtil.getDB();
		String sql="UPDATE student SET NAME='"+updatestuname+"',sex='"+updatestusex+"',class='"+updatestuclass+"' WHERE id='"+updatestuid+"'";
		int num=db.update(sql);
		if(num>0) {
			System.out.println("修改成功");
			response.sendRedirect("asssucceed.jsp");
		}else {
			System.out.println("修改失败");
			response.sendRedirect("shibai.jsp");
		}
		
		
	}

}
