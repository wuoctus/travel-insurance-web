package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

import java.math.BigDecimal;

public class Tour {
    private int id;
    private String name;
    private int regionId;
    private int cityId;
    private String duration;
    private BigDecimal rating;
    private String route;
    private int price;
    private String image;
    private String description;
    private int status;
    private Region region;
    private City city;
    public Tour() {
    }

    public Tour(String duration, int id, String name, int regionId, int cityId, BigDecimal rating, String route, int price, String image, String description, int status) {
        this.id = id;
        this.duration = duration;
        this.name = name;
        this.regionId = regionId;
        this.cityId = cityId;
        this.rating = rating;
        this.route = route;
        this.price = price;
        this.image = image;
        this.description = description;
        this.status = status;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getRegionId() {
        return regionId;
    }

    public void setRegionId(int regionId) {
        this.regionId = regionId;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
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

    public Region getRegion() {
        return region;
    }

    public void setRegion(Region region) {
        this.region = region;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    @Override
    public String toString() {
        return "Tour{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", regionId=" + regionId +
                ", cityId=" + cityId +
                ", rating=" + rating +
                ", route='" + route + '\'' +
                ", price=" + price +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                ", status=" + status +
                ", region=" + region +
                ", city=" + city +
                '}';
    }
}
