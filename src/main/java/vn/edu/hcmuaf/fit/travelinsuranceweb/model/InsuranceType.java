package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

import java.io.Serializable;

public class InsuranceType implements Serializable {
    private int id;
    private String name;

    public InsuranceType() {
    }

    public InsuranceType(int id, String name) {
        this.id = id;
        this.name = name;
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

    @Override
    public String toString() {
        return "InsuranceType{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
