function disablefields() {
	if (document.getElementById('student').checked == 1 || document.getElementById('allEnquiry').checked == 1)
	{ 
		document.getElementById('emailId').disabled='true';
		document.getElementById('emailId').value='disabled'; 
   }else
   { 
	   document.getElementById('emailId').disabled='false'; 
	   document.getElementById('emailId').value=''; 
	 } 
	
	} 
