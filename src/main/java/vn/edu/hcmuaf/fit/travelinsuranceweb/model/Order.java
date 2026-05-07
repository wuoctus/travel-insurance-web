package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

public class Order {
    private int id;
    private String customerName;
    private String customerPhone;
    private String customerEmail;
    private String customerAddress;
    private double subtotalAmount;
    private double discountAmount;
    private double totalAmount;
    private String paymentMethod;
    private int userId;
    private String status;

    public Order(int id, String customerName, String customerPhone, String customerEmail, String customerAddress, double subtotalAmount, double discountAmount, double totalAmount, String paymentMethod, String status) {
        this.id = id;
        this.customerName = customerName;
        this.customerPhone = customerPhone;
        this.customerEmail = customerEmail;
        this.customerAddress = customerAddress;
        this.subtotalAmount = subtotalAmount;
        this.discountAmount = discountAmount;
        this.totalAmount = totalAmount;
        this.paymentMethod = paymentMethod;
        this.status = status;
    }

    public Order() {
    }

    public int getOrder_id() {
        return id;
    }

    public void setOrder_id(int order_id) {
        this.id = order_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public double getSubtotalAmount() {
        return subtotalAmount;
    }

    public void setSubtotalAmount(double subtotalAmount) {
        this.subtotalAmount = subtotalAmount;
    }

    public double getDiscountAmount() {
        return discountAmount;
    }

    public void setDiscountAmount(double discountAmount) {
        this.discountAmount = discountAmount;
    }

    @Override
    public String toString() {
        return "Order{" +
                "order_id=" + id +
                ", customerName='" + customerName + '\'' +
                ", customerPhone='" + customerPhone + '\'' +
                ", customerEmail='" + customerEmail + '\'' +
                ", customerAddress='" + customerAddress + '\'' +
                ", subtotalAmount=" + subtotalAmount +
                ", discountAmount=" + discountAmount +
                ", totalAmount=" + totalAmount +
                ", paymentMethod='" + paymentMethod + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
