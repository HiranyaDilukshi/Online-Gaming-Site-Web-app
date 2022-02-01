function loadData(name) {
	if( name == button1 ){
		document.getElementById("header").innerHTML = "Beginner"
		document.getElementById("para").innerHTML = "Monthly Downloads - 50 Games"+"<br>"+"Plan Validity - 1 Month"+"<br>"+"Streaming - Unlimited";
	}
	else if( name == button2 ){
		document.getElementById("header").innerHTML = "Standard"
		document.getElementById("para").innerHTML = "Monthly Downloads - 100 Games"+"<br>"+"Plan Validity - 3 Months"+"<br>"+"Streaming - Unlimited";
	}
	else if( name == button3 ){
		document.getElementById("header").innerHTML = "Premium"
		document.getElementById("para").innerHTML = "Monthly Downloads - 500 Games"+"<br>"+"Plan Validity - 6 Months"+"<br>"+"Streaming - Unlimited";
	}
	else{
		alert("Invalid");
	}
}