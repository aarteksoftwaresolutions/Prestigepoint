/**
 *   
 */
	function sendEmail(sendmailDetails,description,assignmentId) { 
		var subject= document.getElementById("subject"+sendmailDetails).innerHTML
		var topic= document.getElementById("topic"+sendmailDetails).innerHTML
		        var chkBoxArray = [];
			$('.chkbox'+sendmailDetails+':checked').each(function() {
		            chkBoxArray.push($(this).val());
		        });
		      if (chkBoxArray==null || chkBoxArray=="")
		      {
		            alert("Please select the atleast one batch");   
		            return false;
		      }
	$.ajax({
		url : "getAssignmentEmailId.do?batchId=" + chkBoxArray +"&subject=" +subject +"&description=" +description+ "&assignmentId=" +assignmentId,
		type : "GET",
		contentType : "application/json; charset=utf-8",
		success : function(call) {
			alert("Your mail is successfully send");
		},
		error : function() {
		}
	})
	      }

