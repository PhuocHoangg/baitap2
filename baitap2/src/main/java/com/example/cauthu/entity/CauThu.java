package com.example.cauthu.entity;

import java.time.LocalDate;

public class CauThu {
    private int id;
    private String name;
    private LocalDate birthday;
    private String exprience;
    private String location;
    private String image;

    public CauThu() {
    }

    public CauThu(int id, String name, LocalDate birthday, String exprience, String location, String image) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.exprience = exprience;
        this.location = location;
        this.image = image;
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

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    public String getExprience() {
        return exprience;
    }

    public void setExprience(String exprience) {
        this.exprience = exprience;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
