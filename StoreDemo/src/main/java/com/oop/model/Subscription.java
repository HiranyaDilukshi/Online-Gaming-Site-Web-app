package com.oop.model;

public class Subscription {
        private int SID;
        private String username;
        private String CID;
        private String name;
        private String date;
        private String amount;
        
        
        
		public Subscription(int SID, String username, String CID, String name, String date, String amount) {
			
			this.SID = SID;
			this.username = username;
            this.CID = CID;
			this.name = name;
			this.date = date;
			this.amount = amount;
		}



		public int getSID() {
			return SID;
		}



	



		public String getUsername() {
			return username;
		}






		public String getCID() {
			return CID;
		}



		


		public String getName() {
			return name;
		}



		


		public String getDate() {
			return date;
		}



		


		public String getAmount() {
			return amount;
		}



}
