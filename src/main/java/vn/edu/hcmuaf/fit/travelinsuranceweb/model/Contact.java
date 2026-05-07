package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

import java.io.Serializable;
import java.time.LocalDateTime;

public class Contact implements Serializable {
    int contactId;
    String name;
    String phone;
    String email;
    String message;
    LocalDateTime create_at;
    int status;

    public Contact() {
    }

    public Contact(int contactId, String name, String phone, String email, String message, LocalDateTime create_at, int status) {
        this.contactId = contactId;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.message = message;
        this.create_at = create_at;
        this.status = status;
    }

    public int getContactId() {
        return contactId;
    }

    public void setContactId(int contactId) {
        this.contactId = contactId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public LocalDateTime getCreate_at() {
        return create_at;
    }

    public void setCreate_at(LocalDateTime create_at) {
        this.create_at = create_at;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Contact{" +
                "contactId=" + contactId +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", message='" + message + '\'' +
                ", create_at=" + create_at +
                ", status=" + status +
                '}';
    }
}