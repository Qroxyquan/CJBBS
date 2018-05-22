package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccountDao;
import dao.UserDao;
import entity.Account;
import entity.User;

public class registerservlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("gbk");
		String name = request.getParameter("accountname");
		String pwd = request.getParameter("password");
		String mail = request.getParameter("mail");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("sex");
		String major = request.getParameter("major");
		String pic = request.getParameter("pic");
		System.out.println(name+gender+major+phone+mail+pic);
		PrintWriter pw = response.getWriter();
		UserDao dao=new UserDao();
	    int id=	dao.register(name, gender, major, phone, mail);
		AccountDao dao1 = new AccountDao();
		dao1.register(name, pwd, mail,pic,id);

		System.out.println(name+gender+major+phone+mail);
		pw.print("<script>alert('注册成功！即将进入登录页面');window.location='index.jsp?name="+name+"'</script>");
		pw.flush();
	    pw.close();
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}

}
