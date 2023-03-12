package com.application.bean;

import java.io.File;
import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.Lob;


import javax.persistence.InheritanceType;


@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public class Semester4 extends Semester {

	public Semester4() {
		
	}

	@Id
	private Integer subjectCode;
	private String subjectName;
	
	@Lob
	private byte[] file;

	
private String fileLocation;

	

	public String getFileLocation() {
		return fileLocation;
	}

	public void setFileLocation(String fileLocation) {
		this.fileLocation = fileLocation;
	}
	

	@Override
	public String toString() {
		return "Semester4 [subjectCode=" + subjectCode + ", subjectName=" + subjectName + ", file="
				+ Arrays.toString(file) + ", fileLocation=" + fileLocation + "]";
	}
	public void setSubjectCode(Integer subjectCode) {
		this.subjectCode = subjectCode;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	

	public Integer getSubjectCode() {
		return subjectCode;
	}

	public String getSubjectName() {
		return subjectName;
	}

	

	public byte[] getFile() {
		return file;
	}

	public void setFile(byte[] file) {
		this.file = file;
	}

	

}
