/**
 * 
 */
function enableChallengeStatus()
{
	
	var ChallengeId=document.getElementById(checkboxId).checked;
	
	var challengeData;
	if(a){
		alert("hiiii");
	}
	
	/*if(b){		
		 data1={'imageId': imageValue,'checkedValue':"checked" };	
		 
    }
	else{
	 	 data1 ={'imageId': imageValue,'checkedValue':"unchecked" };
					
	}*/
		
 	$.ajax({
		url : 'changeScrollerStatus.do',
		data : data1,
		 contentType : "application/json; charset=utf-8", 
		success : function(response) {
			
		},
		error : function(error) {

		}
	}); 
		
	}
