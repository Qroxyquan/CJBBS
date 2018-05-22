package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.Account;
import util.DBUtils;

public class AccountDao {
	public int islogin() {
		Connection conn = null;
		try {
			conn = DBUtils.getConnection();
			String sql = "select * from account_info where login=1";
			/**
			 * prepareStatement防止sql攻击
			 */
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				return rs.getInt("UserID");
			}else {
				return 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		} finally {
			DBUtils.closeConnection(conn);
		}
	}

	public boolean isname(String username) {
		Connection conn = null;
		try {
			conn = DBUtils.getConnection();
			String sql = "select * from account_info where Accountname=?";
			/**
			 * prepareStatement防止sql攻击
			 */
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		} finally {
			DBUtils.closeConnection(conn);
		}
	}
	
	public boolean ismail(String mail) {
		Connection conn = null;
		try {
			conn = DBUtils.getConnection();
			String sql = "select * from account_info where mail=?";
			/**
			 * prepareStatement防止sql攻击
			 */
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, mail);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		} finally {
			DBUtils.closeConnection(conn);
		}
	}
	
	public boolean isphone(String phone) {
		Connection conn = null;
		try {
			conn = DBUtils.getConnection();
			String sql = "select * from user_info where phone=?";
			/**
			 * prepareStatement防止sql攻击
			 */
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, phone);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		} finally {
			DBUtils.closeConnection(conn);
		}
	}
	
	public void register(String username,String password,String mail,String pic,int userid) {
		Connection conn = null;
		try {
			conn = DBUtils.getConnection();
			String sql = "insert into account_info"
					+ "(Accountname,password,mail,pic,UserID)" + " values(?,?,?,?,?);";
			/**
			 * prepareStatement防止sql攻击
			 */
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, mail);
			ps.setString(4, "img/"+pic);
			ps.setInt(5, userid);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		} finally {
			DBUtils.closeConnection(conn);
		}
	}
	
	public Account login(String name, String pwd) {
		Connection conn = null;
		Account Account = null;
		try {
			conn = DBUtils.getConnection();
			String sql = "select * from account_info where Accountname=? and password=?";
			String sql1 ="update account_info set login=1 where Accountname=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			PreparedStatement ps1 = conn.prepareStatement(sql1);
			ps.setString(1,name);
			ps.setString(2,pwd);
			ps1.setString(1,name);
			ps1.executeUpdate();
			ResultSet rs = ps.executeQuery();
			System.out.println(sql);
			while (rs.next()) {
				String username = rs.getString("Accountname");
				System.out.println(username);
				String password = rs.getString("password");
				System.out.println(password);
				int login=rs.getInt("login");
				System.out.println(login);
				Account = new Account();
				Account.setAccountname(username);
				Account.setPassword(password);
				Account.setLogin(login);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw new RuntimeException("帐号或密码错误");
		} finally {
			DBUtils.closeConnection(conn);
		}
		return Account;
	}
	
	public List<Account> find(int login) {
		List<Account> accounts = new ArrayList<Account>();
		Connection conn = null;
		try {
			// 获取连接
			conn = DBUtils.getConnection();
			// 编写sql
			String sql = "select * from account_info where login="+login+";";
			/**
			 * prepareStatement防止sql注入攻击
			 */
			// 该方法的集合是一个resultset类型
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String name = rs.getString("Accountname");
				String pic = rs.getString("pic");
				int id=rs.getInt("UserID");
				System.out.println();
				// 将数据添加到user的实体类中
				Account Account = new Account();
                Account.setAccountname(name);
                Account.setPic(pic);
                Account.setUserID(id);
				accounts.add(Account);
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
		return accounts;
	}
	
	public  String findname(int userID) {
		Connection conn = null;
		try {
			// 获取连接
			conn = DBUtils.getConnection();
			// 编写sql
			String sql = "select * from account_info where UserID="+userID+";";
			/**
			 * prepareStatement防止sql注入攻击
			 */
			// 该方法的集合是一个resultset类型
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
		    String name = rs.getString("Accountname");
		    return name;
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
	}
}
