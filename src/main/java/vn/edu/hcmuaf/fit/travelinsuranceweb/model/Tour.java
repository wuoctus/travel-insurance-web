package vn.edu.hcmuaf.fit.travelinsurancewebsite.model;

import java.math.BigDecimal;

public class Tour {
    int tour_ID;
    String name;
    String badge_type;
    String duration;
    BigDecimal rating;
    String route;
    int price;
    String image;
    String description;
    int status;

    public Tour() {
    }

    public Tour(int id, String name, String badge_Type, String duration, BigDecimal rating, String route, int price, String image, String description, int status) {
        this.tour_ID = id;
        this.name = name;
        this.badge_type = badge_Type;
        this.duration = duration;
        this.rating = rating;
        this.route = route;
        this.price = price;
        this.image = image;
        this.description = description;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Tour{" +
                "tour_ID=" + tour_ID +
                ", name='" + name + '\'' +
                ", badge_type='" + badge_type + '\'' +
                ", duration='" + duration + '\'' +
                ", rating=" + rating +
                ", route='" + route + '\'' +
                ", price=" + price +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                '}';
    }

    public int getTour_ID() {
        return tour_ID;
    }

    public void setTour_ID(int tour_ID) {
        this.tour_ID = tour_ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBadge_type() {
        return badge_type;
    }

    public void setBadge_type(String badge_type) {
        this.badge_type = badge_type;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public BigDecimal getRating() {
        return rating;
    }

    public void setRating(BigDecimal rating) {
        this.rating = rating;
    }

    public String getRoute() {
        return route;
    }

    public void setRoute(String route) {
        this.route = route;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
