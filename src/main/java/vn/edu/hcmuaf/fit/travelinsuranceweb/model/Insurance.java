package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

import java.io.Serializable;

public class Insurance implements Serializable {
    private int id;
    private int typeId;
    private int categoryId;
    private double price;
    private String description;
    private short isPopular;
    private String highlight;

    public Insurance() {
    }

    public Insurance(int id, int typeId, int categoryId, double price, String description, short isPopular, String highlight) {
        this.id = id;
        this.typeId = typeId;
        this.categoryId = categoryId;
        this.price = price;
        this.description = description;
        this.isPopular = isPopular;
        this.highlight = highlight;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public short getIsPopular() {
        return isPopular;
    }

    public void setIsPopular(short isPopular) {
        this.isPopular = isPopular;
    }

    public String getHighlight() {
        return highlight;
    }

    public void setHighlight(String highlight) {
        this.highlight = highlight;
    }

    @Override
    public String toString() {
        return "Insurance{" +
                "id=" + id +
                ", typeId=" + typeId +
                ", categoryId=" + categoryId +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", isPopular=" + isPopular +
                ", highlight='" + highlight + '\'' +
                '}';
    }
}
