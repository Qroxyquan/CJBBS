package entity;

import javax.xml.soap.SAAJResult;

public class Content {
    int contentID;
    int UserID;
    String title;
    String content;
    int istop;
    int isessence;


    @Override
    public String toString() {
        return "Content{" +
                "contentID=" + contentID +
                ", UserID=" + UserID +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", istop=" + istop +
                ", isessence=" + isessence +
                '}';
    }


    public int getContentID() {
        return contentID;
    }

    public void setContentID(int contentID) {
        this.contentID = contentID;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int userID) {
        UserID = userID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getIstop() {
        return istop;
    }

    public void setIstop(int istop) {
        this.istop = istop;
    }

    public int getIsessence() {
        return isessence;
    }

    public void setIsessence(int isessence) {
        this.isessence = isessence;
    }


}
