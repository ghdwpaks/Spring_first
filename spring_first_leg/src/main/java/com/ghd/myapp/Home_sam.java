package com.ghd.myapp;

import javax.persistence.Entity;

@Entity
public class Home_sam {
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Home_sam [name=" + name + "]";
	}
	
	
	
	
}
