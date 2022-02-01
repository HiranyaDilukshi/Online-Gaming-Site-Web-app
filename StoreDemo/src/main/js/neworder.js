function enablebutton() {
	if(document.getElementById("chkagree").checked) {
		document.getElementById("btnsubmit").disabled = false;
	} else {
		document.getElementById("btnsubmit").disabled = true;
	}
}