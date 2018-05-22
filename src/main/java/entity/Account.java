package entity;

public class Account {
int AccountID;
String Accountname;
String password;
String mail;
String pic;
int UserID;
int login;

public int getLogin() {
	return login;
}
public void setLogin(int login) {
	this.login = login;
}
@Override
public String toString() {
	return "Account [AccountID=" + AccountID + ", Accountname=" + Accountname + ", password=" + password + ", mail="
			+ mail + ", pic=" + pic + ", UserID=" + UserID + ", login=" + login + "]";
}
public int getAccountID() {
	return AccountID;
}
public void setAccountID(int accountID) {
	AccountID = accountID;
}
public String getAccountname() {
	return Accountname;
}
public void setAccountname(String accountname) {
	Accountname = accountname;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getMail() {
	return mail;
}
public void setMail(String mail) {
	this.mail = mail;
}
public String getPic() {
	return pic;
}
public void setPic(String pic) {
	this.pic = pic;
}
public int getUserID() {
	return UserID;
}
public void setUserID(int userID) {
	UserID = userID;
}

}
