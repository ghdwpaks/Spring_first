package com.ghd.myapp;

import javax.persistence.Entity;

@Entity
public class HomeSam {
	
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "HomeSam [name=" + name + "]";
	}

	
	
	
	
	
}
