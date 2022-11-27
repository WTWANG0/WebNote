package com.msb.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * @Author: Ma HaiYang
 * @Description: MircoMessage:Mark_7001
 */
public class Student implements Serializable {
    private String stuname;
    private String stugender;
    private int stuage;
    private Date birthday;


    public Student() {
    }

    public Student(String stuname, String stugender, int stuage, Date birthday) {
        this.stuname = stuname;
        this.stugender = stugender;
        this.stuage = stuage;
        this.birthday = birthday;
    }

    public String getStuname() {
        return stuname;
    }

    public void setStuname(String stuname) {
        this.stuname = stuname;
    }

    public String getStugender() {
        return stugender;
    }

    public void setStugender(String stugender) {
        this.stugender = stugender;
    }

    public int getStuage() {
        return stuage;
    }

    public void setStuage(int stuage) {
        this.stuage = stuage;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}
