package vn.edu.hcmuaf.fit.travelinsurancewebsite.model;

import java.io.Serializable;

public class TourDetails implements Serializable {
    int tour_detail_ID;
    int tour_ID;
    String day_number;
    String day_title;
    String day_content;

    public TourDetails() {
    }

    public TourDetails(int tour_detail_ID, int tour_ID, String day_number, String day_title, String day_content) {
        this.tour_detail_ID = tour_detail_ID;
        this.tour_ID = tour_ID;
        this.day_number = day_number;
        this.day_title = day_title;
        this.day_content = day_content;
    }

    public int getTour_detail_ID() {
        return tour_detail_ID;
    }

    public void setTour_detail_ID(int tour_detail_ID) {
        this.tour_detail_ID = tour_detail_ID;
    }

    public int getTour_ID() {
        return tour_ID;
    }

    public void setTour_ID(int tour_ID) {
        this.tour_ID = tour_ID;
    }

    public String getDay_number() {
        return day_number;
    }

    public void setDay_number(String day_number) {
        this.day_number = day_number;
    }

    public String getDay_title() {
        return day_title;
    }

    public void setDay_title(String day_title) {
        this.day_title = day_title;
    }

    public String getDay_content() {
        return day_content;
    }

    public void setDay_content(String day_content) {
        this.day_content = day_content;
    }

    @Override
    public String toString() {
        return "TourDetails{" +
                "tour_detail_ID=" + tour_detail_ID +
                ", tour_ID=" + tour_ID +
                ", day_number='" + day_number + '\'' +
                ", day_title='" + day_title + '\'' +
                ", day_content='" + day_content + '\'' +
                '}';
    }
}
