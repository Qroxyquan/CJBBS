package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.User;
import util.DBUtils;

public class UserDao {
	public int register(String username,String gender,String major,String phone,String mail) {
		Connection conn = null;
		try {
			conn = DBUtils.getConnection();
			String sql = "insert into user_info"
					+ "(Username,gender,major,phone,mail)" + " values(?,?,?,?,?);";
			/**
			 * prepareStatement防止sql攻击
			 */
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, gender);
			ps.setString(3, major);
			ps.setString(4, phone);
			ps.setString(5, mail);
			ps.executeUpdate();
			String sql1 = "select * from user_info where username='"+username+"';";
			PreparedStatement ps1 = conn.prepareStatement(sql1);
			ResultSet rs = ps1.executeQuery();
			rs.next();
			int userid=rs.getInt("UserID");
			System.out.println(userid);
			return userid;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		} finally {
			DBUtils.closeConnection(conn);
		}
	}
	
	public List<User> findid(String name) {
		List<User> users = new ArrayList<User>();
		Connection conn = null;
		try {
			// 获取连接
			conn = DBUtils.getConnection();
			// 编写sql
			String sql = "select * from user_info where username='"+name+"';";
			/**
			 * prepareStatement防止sql注入攻击
			 */
			// 该方法的集合是一个resultset类型
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("UserID");
				String gender = rs.getString("gender");
				String major = rs.getString("major");
				String phone = rs.getString("phone");
				int age = rs.getInt("age");
				String mail = rs.getString("mail");
				// 将数据添加到user的实体类中
				User user = new User();
				user.setUserID(id);
				user.setGender(gender);
				user.setMajor(major);
				user.setPhone(phone);
				user.setAge(age);
				user.setMail(mail);			
                users.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
			/**
			 * error 非运行时异常，是指程序员在编写代码后 软件在运行过程中，出现了不可控的异常。try捕获不了， 一般error有内存溢出
			 * Exception（运行时异常） 如果查询过程中，出现了error异常
			 */
			throw new RuntimeException("系统繁忙，请稍后再试。");
		} finally {
			DBUtils.closeConnection(conn);
		}
		return users;
	}
}
