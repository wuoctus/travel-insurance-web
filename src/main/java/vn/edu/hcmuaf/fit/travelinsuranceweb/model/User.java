package vn.edu.hcmuaf.fit.travelinsurancewebsite.model;

public class User {
    private int userId;
    private String username;
    private String pass;
    private String email;
    private String phone;
    private String role;
    private int isActive;

    public User() {
    }

    public User(int userId, String username, String pass, String email, String phone, String role, int isActive) {
        this.userId = userId;
        this.username = username;
        this.pass = pass;
        this.email = email;
        this.phone = phone;
        this.role = role;
        this.isActive = isActive;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {  // Thêm getter cho phone
        return phone;
    }

    public void setPhone(String phone) {  // Thêm setter cho phone
        this.phone = phone;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public int isActive() {
        return isActive;
    }

    public void setActive(int active) {
        isActive = active;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", username='" + username + '\'' +
                ", pass='" + pass + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +  // Thêm phone vào toString
                ", role='" + role + '\'' +
                ", isActive=" + isActive +
                '}';
    }
}