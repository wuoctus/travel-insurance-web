package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

import java.io.Serializable;

public class InsuranceBenefitCategory implements Serializable {
    private int id;
    private String name;

    public InsuranceBenefitCategory() {
    }

    public InsuranceBenefitCategory(int id, String name) {
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
        return "InsuranceCategory{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
