package web;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccountDao;
import entity.Account;

public class loginServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("gbk");
		String name = request.getParameter("accountname");
		String pwd = request.getParameter("password");
		PrintWriter pw = response.getWriter();
		AccountDao dao = new AccountDao();
		Account account = dao.login(name, pwd);
		int login=account.getLogin();
		System.out.println(name + "   " + pwd+ "   " + login);
		if (account != null) {
			pw.print("<script>alert('密码正确！');window.location='scbbs.jsp?name="+login+"'</script>");
			pw.flush();
			pw.close();
			request.getRequestDispatcher("scbbs.jsp").forward(request, response);
		} else {
			pw.print("<script>alert('密码错误！');window.location='index.html'</script>");
			pw.flush();
			pw.close();
			request.getRequestDispatcher("index.html").forward(request, response);
		}

	}
}
