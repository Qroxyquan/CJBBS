package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccountDao;

public class acphoneservlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("gbk"); 
		AccountDao dao=new AccountDao();
		String name=request.getParameter("Phone");
		System.out.println(name);
		String result=null;
        if(dao.ismail(name)){  
//          userDao.isExists()检测数据库是否存在该用户  
        	result="<span class=\"glyphicon glyphicon-remove register-false-logo \" aria-hidden=\"true\"></span>";
        }else{  
        	result="<span class=\"glyphicon glyphicon-ok register-true-logo \" aria-hidden=\"true\"></span>";
        	System.out.println(result);
        }
        response.setContentType("text/html");
        response.getWriter().print(result);
	}
}
