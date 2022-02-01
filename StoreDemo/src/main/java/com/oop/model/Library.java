package com.oop.model;

public class Library {
	
	//declare attributes
	private int PID;
	private String CID;
	private int GID;
	private String name;
	private int size;
	private String status;
	private int timeleft;
	private String location;
	private String date;
	private String description;
	
	
	//create a constructor to assign values
	public Library(int PID, String CID, int GID, String name, int size, String status, int timeleft,
			String location, String date,String description) {
	
		this.PID= PID;
		this.CID= CID;
		this.GID= GID;
		this.name = name;
		this.size = size;
		this.status = status;
		this.timeleft = timeleft;
		this.location = location;
		this.date = date;
		this.description=description;
	}
	
	
	
	//getters
	public int getPID() {
		return PID;
	}
	
	public String getCID() {
		return CID;
	}
	
	public int getGID() {
		return GID;
	}
	
	public String getName() {
		return name;
	}
	
	public int getSize() {
		return size;
	}
	
	public String getStatus() {
		return status;
	}
	
	public int getTimeleft() {
		return timeleft;
	}
	
	public String getlocation() {
		return location;
	}
	
	public String getDate() {
		return date;
	}

	public String getDescription() {
		return description;
	}
	
	
}