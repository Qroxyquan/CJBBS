package entity;

public class User {
int UserID;
String Username;
String gender;
String major;
String phone;
int age;
String mail;
int follownum;
int contentnum;
int fansnum;
@Override
public String toString() {
	return "User [UserID=" + UserID + ", Username=" + Username + ", gender=" + gender + ", major=" + major + ", phone="
			+ phone + ", age=" + age + ", mail=" + mail + ", follownum=" + follownum + ", contentnum=" + contentnum
			+ ", fansnum=" + fansnum + "]";
}
public int getUserID() {
	return UserID;
}
public void setUserID(int userID) {
	UserID = userID;
}
public String getUsername() {
	return Username;
}
public void setUsername(String username) {
	Username = username;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getMajor() {
	return major;
}
public void setMajor(String major) {
	this.major = major;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getMail() {
	return mail;
}
public void setMail(String mail) {
	this.mail = mail;
}
public int getFollownum() {
	return follownum;
}
public void setFollownum(int follownum) {
	this.follownum = follownum;
}
public int getContentnum() {
	return contentnum;
}
public void setContentnum(int contentnum) {
	this.contentnum = contentnum;
}
public int getFansnum() {
	return fansnum;
}
public void setFansnum(int fansnum) {
	this.fansnum = fansnum;
}

}
