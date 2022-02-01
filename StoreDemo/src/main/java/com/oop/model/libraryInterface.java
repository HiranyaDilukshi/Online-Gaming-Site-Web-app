package com.oop.model;

import java.util.List;

public interface libraryInterface {

	public boolean validate(String CID);
	public List<Library> getLibrary(String CID);
	public boolean insertshipping(String CID,int GID,String name);
	public boolean updatelibrary(String pid, String gid, String name, String size, String status, String timeleft,
			String location, String date, String description);
	public List<Library> getLibraryDetails(String pid);
	public boolean deleteLibrary(String pid);
	
}
