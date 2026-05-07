package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

public class Company {
    int id;
    String name;
    String logo;
    String sloganHeader;
    String aboutUs;
    String sloganFooter;
    String address;
    String hotline;
    String email;
    String copyright;
    String office_hours;
    String background;
    String facebook;
    String youtube;
    String instagram;

    public Company() {
    }

    public Company(int id, String name, String logo, String sloganHeader, String aboutUs, String sloganFooter, String address, String hotline, String email, String copyright, String office_hours, String background, String facebook, String youtube, String instagram) {
        this.id = id;
        this.name = name;
        this.logo = logo;
        this.sloganHeader = sloganHeader;
        this.aboutUs = aboutUs;
        this.sloganFooter = sloganFooter;
        this.address = address;
        this.hotline = hotline;
        this.email = email;
        this.copyright = copyright;
        this.office_hours = office_hours;
        this.background = background;
        this.facebook = facebook;
        this.youtube = youtube;
        this.instagram = instagram;
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

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getSlogan_header() {
        return sloganHeader;
    }

    public void setSlogan_header(String slogan_header) {
        this.sloganHeader = slogan_header;
    }

    public String getAbout_us() {
        return aboutUs;
    }

    public void setAbout_us(String about_us) {
        this.aboutUs = about_us;
    }

    public String getSlogan_footer() {
        return sloganFooter;
    }

    public void setSlogan_footer(String slogan_footer) {
        this.sloganFooter = slogan_footer;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getHotline() {
        return hotline;
    }

    public void setHotline(String hotline) {
        this.hotline = hotline;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCopy_right() {
        return copyright;
    }

    public void setCopy_right(String copy_right) {
        this.copyright = copy_right;
    }

    public String getOffice_hours() {
        return office_hours;
    }

    public void setOffice_hours(String office_hours) {
        this.office_hours = office_hours;
    }

    public String getBackground() {
        return background;
    }

    public void setBackground(String background) {
        this.background = background;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getYoutube() {
        return youtube;
    }

    public void setYoutube(String youtube) {
        this.youtube = youtube;
    }

    public String getInstagram() {
        return instagram;
    }

    public void setInstagram(String instagram) {
        this.instagram = instagram;
    }

    @Override
    public String toString() {
        return "Company{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", logo='" + logo + '\'' +
                ", slogan_header='" + sloganHeader + '\'' +
                ", about_us='" + aboutUs + '\'' +
                ", slogan_footer='" + sloganFooter + '\'' +
                ", address='" + address + '\'' +
                ", hotline='" + hotline + '\'' +
                ", email='" + email + '\'' +
                ", copy_right='" + copyright + '\'' +
                ", office_hours='" + office_hours + '\'' + background +
                '}';
    }
}
