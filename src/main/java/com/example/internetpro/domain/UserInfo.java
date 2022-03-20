package com.example.internetpro.domain;

public class UserInfo {
    private int id;
    private String usedate;
    private String usetime;
    private String type;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsedate() {
        return usedate;
    }

    public void setUsedate(String usedate) {
        this.usedate = usedate;
    }

    public String getUsetime() {
        return usetime;
    }

    public void setUsetime(String usetime) {
        this.usetime = usetime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "id=" + id +
                ", usedate='" + usedate + '\'' +
                ", usetime='" + usetime + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
