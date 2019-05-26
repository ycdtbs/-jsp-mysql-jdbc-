

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tools.DBUtil;

/**
 * Servlet implementation class addServlet
 */
@WebServlet("/addServlet")
public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addServlet() {
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
		String studentid=request.getParameter("addstuid");
		String studentname=request.getParameter("addstuname");
		String studentclass=request.getParameter("addstuclass");
		String studentsex=request.getParameter("addstusex");
		System.out.println(studentid);
		System.out.println(studentname);
		System.out.println(studentclass);
		DBUtil db=DBUtil.getDB();
		String sql="INSERT INTO student(id,name,sex,class)VALUES ('"+studentid+"','"+studentname+"','"+studentsex+"','"+studentclass+"')";
		int num=db.update(sql);
		if(num>0) {
			System.out.println("添加成功");
			response.sendRedirect("selectstudent.jsp");
		}
		else{
			System.out.println("添加失败");
			response.sendRedirect("adddefult.jsp");
		}
		db.close();
	}

}
