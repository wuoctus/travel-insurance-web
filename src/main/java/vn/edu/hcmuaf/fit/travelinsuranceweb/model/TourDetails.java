package vn.edu.hcmuaf.fit.travelinsurancewebsite.model;

import java.io.Serializable;

public class TourDetails implements Serializable {
    int id;
    int tourId;
    String dayNumber;
    String dayTitle;
    String dayContent;

    public TourDetails() {
    }

    public TourDetails(int id, int tourId, String dayNumber, String dayTitle, String dayContent) {
        this.id = id;
        this.tourId = tourId;
        this.dayNumber = dayNumber;
        this.dayTitle = dayTitle;
        this.dayContent = dayContent;
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

    public String getDayNumber() {
        return dayNumber;
    }

    public void setDayNumber(String dayNumber) {
        this.dayNumber = dayNumber;
    }

    public String getDayTitle() {
        return dayTitle;
    }

    public void setDayTitle(String dayTitle) {
        this.dayTitle = dayTitle;
    }

    public String getDayContent() {
        return dayContent;
    }

    public void setDayContent(String dayContent) {
        this.dayContent = dayContent;
    }

    @Override
    public String toString() {
        return "TourDetails{" +
                "id=" + id +
                ", tourId=" + tourId +
                ", dayNumber='" + dayNumber + '\'' +
                ", dayTitle='" + dayTitle + '\'' +
                ", dayContent='" + dayContent + '\'' +
                '}';
    }
}
