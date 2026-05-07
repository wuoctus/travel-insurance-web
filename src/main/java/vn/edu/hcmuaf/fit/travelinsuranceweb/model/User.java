package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

public class User {
    private int userId;
    private int roleID;
    private String username;
    private String pass;
    private String email;
    private int isEmailVerified;
    private String phone;
    private String fullName;
    private String createdDate;
    private int status;
    private Role role;
    private int points;

    public User() {
    }

    public User(int points, int userId, int roleID, String username, String pass, String email, int isEmailVerified, String phone, String fullName, String createdDate, int status) {
        this.userId = userId;
        this.roleID = roleID;
        this.username = username;
        this.pass = pass;
        this.email = email;
        this.isEmailVerified = isEmailVerified;
        this.phone = phone;
        this.fullName = fullName;
        this.createdDate = createdDate;
        this.status = status;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
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

    public int getIsEmailVerified() {
        return isEmailVerified;
    }

    public void setIsEmailVerified(int isEmailVerified) {
        this.isEmailVerified = isEmailVerified;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", roleID=" + roleID +
                ", username='" + username + '\'' +
                ", pass='" + pass + '\'' +
                ", email='" + email + '\'' +
                ", isEmailVerified=" + isEmailVerified +
                ", phone='" + phone + '\'' +
                ", fullName='" + fullName + '\'' +
                ", createdDate='" + createdDate + '\'' +
                ", status=" + status +
                ", role=" + role +
                ", points=" + points +
                '}';
    }
}