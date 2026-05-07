package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

import java.io.Serializable;
import java.util.Date;

public class OrderItem implements Serializable {
    private int id;
    private int orderId;
    private String productType;
    private int productRefId;
    private String productName;
    private double price;
    private int quantity;
    private Date startDate;

    public OrderItem(Date startDate, int quantity, double price, String productName, int productRefId, String productType, int order_id, int id) {
        this.startDate = startDate;
        this.quantity = quantity;
        this.price = price;
        this.productName = productName;
        this.productRefId = productRefId;
        this.productType = productType;
        this.orderId = orderId;
        this.id = id;
    }

    public OrderItem() {
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getProductRefId() {
        return productRefId;
    }

    public void setProductRefId(int productRefId) {
        this.productRefId = productRefId;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "OderDetail{" +
                "id=" + id +
                ", order_id=" + orderId +
                ", productType='" + productType + '\'' +
                ", productRefId=" + productRefId +
                ", productName='" + productName + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", startDate=" + startDate +
                '}';
    }
}
