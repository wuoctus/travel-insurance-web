package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

public class InsuranceBenefit {
    private int id;
    private int insuranceBenefitCategoryId;
    private String name;
    private String description;

    public InsuranceBenefit() {
    }

    public InsuranceBenefit(int id, int insuranceBenefitCategoryId, String name, String description) {
        this.id = id;
        this.insuranceBenefitCategoryId = insuranceBenefitCategoryId;
        this.name = name;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getInsuranceBenefitCategoryId() {
        return insuranceBenefitCategoryId;
    }

    public void setInsuranceBenefitCategoryId(int insuranceBenefitCategoryId) {
        this.insuranceBenefitCategoryId = insuranceBenefitCategoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "InsuranceBenefit{" +
                "id=" + id +
                ", insuranceBenefitCategoryId=" + insuranceBenefitCategoryId +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
