package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

import java.io.Serializable;

public class TourRating implements Serializable {
    private int id;
    private int tourId;
    private int userId;
    private String userName;
    private int starRate;
    private String content;

    public TourRating() {
    }

    public TourRating(int id, int tourId, int userId, String userName, int starRate, String content) {
        this.id = id;
        this.tourId = tourId;
        this.userId = userId;
        this.userName = userName;
        this.starRate = starRate;
        this.content = content;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTourId() {
        return tourId;
    }

    public void setTourId(int tourId) {
        this.tourId = tourId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getStarRate() {
        return starRate;
    }

    public void setStarRate(int starRate) {
        this.starRate = starRate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
