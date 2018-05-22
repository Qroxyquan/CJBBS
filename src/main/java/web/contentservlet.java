package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccountDao;
import dao.ContentDao;


public class contentservlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("GB2312");
		response.setCharacterEncoding("GB2312"); 
		String content=request.getParameter("editor1");
		String title=request.getParameter("title");
		int userID=Integer.valueOf(request.getParameter("UserID"));
		System.out.println(content);
		System.out.println(title);
		ContentDao dao=new ContentDao();
		PrintWriter pw = response.getWriter();
		dao.insert(title,content,userID);
		pw.print("<script>alert('发帖成功');window.location='scbbs.jsp?name=1'</script>");
		pw.flush();
		pw.close();

	}
}
