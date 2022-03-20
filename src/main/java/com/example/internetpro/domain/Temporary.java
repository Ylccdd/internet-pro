package com.example.internetpro.domain;

public class Temporary {
    private int id;
    private String recharge_money;
    private String recharge_date;
    private String recharge_phone;
    private String recharge_type;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRecharge_money() {
        return recharge_money;
    }

    public void setRecharge_money(String recharge_money) {
        this.recharge_money = recharge_money;
    }

    public String getRecharge_date() {
        return recharge_date;
    }

    public void setRecharge_date(String recharge_date) {
        this.recharge_date = recharge_date;
    }

    public String getRecharge_type() {
        return recharge_type;
    }

    public void setRecharge_type(String recharge_type) {
        this.recharge_type = recharge_type;
    }

    public String getRecharge_phone() {
        return recharge_phone;
    }

    public void setRecharge_phone(String recharge_phone) {
        this.recharge_phone = recharge_phone;
    }

    @Override
    public String toString() {
        return "Temporary{" +
                "id=" + id +
                ", recharge_money='" + recharge_money + '\'' +
                ", recharge_date='" + recharge_date + '\'' +
                ", recharge_phone='" + recharge_phone + '\'' +
                ", recharge_type='" + recharge_type + '\'' +
                '}';
    }
}
