package com.example.internetpro.domain;

public class Charge {
    private int id;
    private String username;
    private String date;
    private String total;
    private String recharge;

    public String getRecharge() {
        return recharge;
    }

    public void setRecharge(String recharge) {
        this.recharge = recharge;
    }

    public String getTotal() {

        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getDate() {

        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getUsername() {

        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getId() {

        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Charge{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", date='" + date + '\'' +
                ", total='" + total + '\'' +
                ", recharge='" + recharge + '\'' +
                '}';
    }

}
