package vn.edu.hcmuaf.fit.travelinsurancewebsite.model;

import java.util.Date;

public class OrderDetail {
    private int order_detail_id;
    private int order_id;
    private String productType;
    private int productRefId;
    private String productName;
    private double price;
    private int quantity;
    private Date startDate;

    public OrderDetail(Date startDate, int quantity, double price, String productName, int productRefId, String productType, int order_id, int order_detail_id) {
        this.startDate = startDate;
        this.quantity = quantity;
        this.price = price;
        this.productName = productName;
        this.productRefId = productRefId;
        this.productType = productType;
        this.order_id = order_id;
        this.order_detail_id = order_detail_id;
    }

    public OrderDetail() {
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

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getOrder_detail_id() {
        return order_detail_id;
    }

    public void setOrder_detail_id(int order_detail_id) {
        this.order_detail_id = order_detail_id;
    }

    @Override
    public String toString() {
        return "OderDetail{" +
                "order_detail_d=" + order_detail_id +
                ", order_id=" + order_id +
                ", productType='" + productType + '\'' +
                ", productRefId=" + productRefId +
                ", productName='" + productName + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", startDate=" + startDate +
                '}';
    }
}
