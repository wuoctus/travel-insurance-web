package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

import java.io.Serializable;

public class Region implements Serializable {
    private int id;
    private String description;

    public Region(){}

    public Region(int id, String description){
        this.id=id;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
