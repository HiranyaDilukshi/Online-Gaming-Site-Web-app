package com.oop.model;

import java.util.List;

public interface subscriptionInterface {

	public  boolean validate(String username,String CID);
	public  List<Subscription> getSubscription(String username,String CID);
	public  boolean insertsubscription(String username,String CID,String name,String date,Float amount);
	public  boolean deleteSubscription(String sid);
	public  List<Subscription> getSubscriptionDetails(String sid);
}
