package test;

import java.util.List;

import dao.AccountDao;
import dao.UserDao;
import entity.Account;
import entity.User;

public class test {
	public static void main(String[] args) {
		String name="yeykai11";
		String password="123456";
		String gender="男";
		String major="jisuanji";
		String mail="1563165";
		String phone="1565165";
		UserDao dao=new UserDao();
		int id=dao.register(name, gender, major, phone, mail);		
		System.out.println(id);
	}
}
