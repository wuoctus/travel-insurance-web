package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

public class UserGoogle {
    private String id;

    private String email;

    private boolean verified_email;

    private String name;

    public UserGoogle() {
    }

    public UserGoogle(String id, String email, boolean verified_email, String name) {
        this.id = id;
        this.email = email;
        this.verified_email = verified_email;
        this.name = name;
    }

    public User mapToUser() {
        User user = new User();
        user.setEmail(this.email);
        user.setFullName(this.name);
        if (this.verified_email) {
            user.setIsEmailVerified(1);
        } else {
            user.setIsEmailVerified(0);
        }
        user.setUsername(this.email);
        return user;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isVerified_email() {
        return verified_email;
    }

    public void setVerified_email(boolean verified_email) {
        this.verified_email = verified_email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
