package dao;

import entity.Account;
import entity.Content;
import util.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ContentDao {
    public void insert(String title,String content,int UserID) {
        Connection conn = null;
        try {
            conn = DBUtils.getConnection();
            String sql = "insert into bbscontent_info"
                    + "(UserID,title,content)" + " values(?,?,?);";
            /**
             * prepareStatement防止sql攻击
             */
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, UserID);
            ps.setString(2, title);
            ps.setString(3, content);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException();
        } finally {
            DBUtils.closeConnection(conn);
        }
    }

    public List<Content> find(int contentID) {
        List<Content> contents = new ArrayList<Content>();
        Connection conn = null;
        try {
            // 获取连接
            conn = DBUtils.getConnection();
            // 编写sql
            String sql = "select * from bbscontent_info where contentID="+contentID+";";
            /**
             * prepareStatement防止sql注入攻击
             */
            // 该方法的集合是一个resultset类型
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String title = rs.getString("title");
                String content = rs.getString("content");
                System.out.println();
                // 将数据添加到user的实体类中
                Content Content = new Content();
                Content.setTitle(title);
                Content.setContent(content);
                contents.add(Content);
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
        return contents;
    }
    
    public List<Content> findAll() {
        List<Content> contents = new ArrayList<Content>();
        Connection conn = null;
        try {
            // 获取连接
            conn = DBUtils.getConnection();
            // 编写sql
            String sql = "select * from bbscontent_info ;";
            /**
             * prepareStatement防止sql注入攻击
             */
            // 该方法的集合是一个resultset类型
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
            	int contentID=rs.getInt("contentID");
                String title = rs.getString("title");
                String content = rs.getString("content");
                int UserID =rs.getInt("UserID");
                int istop=rs.getInt("istop");
                int isessence=rs.getInt("isessence");         
                // 将数据添加到user的实体类中
                Content Content = new Content();
                Content.setContentID(contentID);
                Content.setTitle(title);
                Content.setContent(content);
                Content.setUserID(UserID);
                Content.setIstop(istop);
                Content.setIsessence(isessence);
                contents.add(Content);
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
        return contents;
    }
}
