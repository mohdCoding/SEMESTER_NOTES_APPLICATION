package com.application.bean;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;

@Entity
public class Student {

	private String name;

	@Id
	private Integer rollno;

	private String dob;

	public String getName() {
		return name;
	}

	public Integer getRollno() {
		return rollno;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setRollno(Integer rollno) {
		this.rollno = rollno;
	}

	@Override
	public String toString() {
		return "Student [name=" + name + ", rollno=" + rollno + ", dob=" + dob + "]";
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

}
