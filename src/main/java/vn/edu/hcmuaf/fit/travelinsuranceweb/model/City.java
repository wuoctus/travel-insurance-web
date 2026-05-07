package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

import java.io.Serializable;

public class City implements Serializable {
    private int id;
    private String name;
    private String region;

    public City() {
    }

    public City(int id, String name, String region) {
        this.id = id;
        this.name = name;
        this.region = region;
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

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }
}
