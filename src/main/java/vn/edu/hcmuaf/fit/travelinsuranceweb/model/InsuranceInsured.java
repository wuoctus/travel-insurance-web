package vn.edu.hcmuaf.fit.travelinsuranceweb.model;

import java.io.Serializable;

public class InsuranceInsured implements Serializable {
    private int id;
    private int insuranceId;
    private int benefitId;
    private String limitText;
    private String decription;

    public InsuranceInsured() {
    }

    public InsuranceInsured(int id, int insuranceId, int benefitId, String limitText, String decription) {
        this.id = id;
        this.insuranceId = insuranceId;
        this.benefitId = benefitId;
        this.limitText = limitText;
        this.decription = decription;
    }

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }

    public String getLimitText() {
        return limitText;
    }

    public void setLimitText(String limitText) {
        this.limitText = limitText;
    }

    public int getBenefitId() {
        return benefitId;
    }

    public void setBenefitId(int benefitId) {
        this.benefitId = benefitId;
    }

    public int getInsuranceId() {
        return insuranceId;
    }

    public void setInsuranceId(int insuranceId) {
        this.insuranceId = insuranceId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "InsuranceInsured{" +
                "id=" + id +
                ", insuranceId=" + insuranceId +
                ", benefitId=" + benefitId +
                ", limitText='" + limitText + '\'' +
                ", decription='" + decription + '\'' +
                '}';
    }
}
