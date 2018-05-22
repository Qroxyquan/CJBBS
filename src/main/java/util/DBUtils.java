package util;

import java.io.InputStream;
import java.sql.Connection;
import java.util.Properties;

import org.apache.commons.dbcp.BasicDataSource;



public class DBUtils {
	private static String Driver;
	private static String url;
	private static String username;
	private static String password;
	//两个策略函数
	private static int initialSize;
	private static int maxActive;
	//声明BasicDataSource对象 赋值为null
	private static BasicDataSource ds=null;
	//静态块
	static {
		try {
			//创建一个对象
			Properties cfg=new Properties();
			InputStream is=
			DBUtils.class.getClassLoader().getResourceAsStream("db.properties");
		  cfg.load(is);
		  Driver=cfg.getProperty("driverClass");
		  url=cfg.getProperty("url");
		  username=cfg.getProperty("user");
		  password=cfg.getProperty("password");
		  initialSize=Integer.parseInt(cfg.getProperty("initialSize"));
		  maxActive=Integer.parseInt(cfg.getProperty("maxActive"));
		  //使用连接池 就必须先把连接池对象创建出来
		  ds = new BasicDataSource();
		  ds.setDriverClassName(Driver);
		  ds.setUrl(url);
		  ds.setUsername(username);
		  ds.setPassword(password);
		  ds.setInitialSize(initialSize);
		  ds.setMaxActive(maxActive);
		    //获取connection对象 封装成一个方法
		 } catch (Exception e) {

		}
		}
	public static Connection getConnection() {
		Connection conn=null;
		try {
			 conn = ds.getConnection();
		} catch (Exception e) {
	           e.printStackTrace();
	           throw new RuntimeException("获取连接失败");
		}
		return conn;
	}
	public static void closeConnection(Connection conn) {
		try {
			if (conn!=null) {
				conn.setAutoCommit(true);
				conn.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	public static void rollback(Connection conn) {
		if (conn!=null) {
		try {
	    		conn.rollback();
     } catch (Exception e) {
	  // TODO: handle exception
    	 e.printStackTrace();
           }
		}
	}

}
	
	
