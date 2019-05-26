

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tools.DBUtil;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
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
		String id=request.getParameter("sid");
		String name=request.getParameter("sname");
		String sex=request.getParameter("ssex");
		String sclass=request.getParameter("nclass");
		String sql="UPDATE student SET NAME='"+name+"',sex='"+sex+"',class='"+sclass+"'WHERE id='"+id+"'";
		DBUtil db=DBUtil.getDB();
		int num=db.update(sql);
		if(num>0) {
			System.out.println("修改成功");
			response.sendRedirect("selectstudent.jsp");
		}else {
			System.out.println("修改失败");
			response.sendRedirect("addefult.jsp");
		}
		
	}

}
