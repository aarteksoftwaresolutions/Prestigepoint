/**
 *   
 */
	function sendEmail(sendmailDetails,description,assignmentId) {
		alert(assignmentId);
		/*alert("description-"+description);*/
		var subject= document.getElementById("subject"+sendmailDetails).innerHTML
		var topic= document.getElementById("topic"+sendmailDetails).innerHTML
		        var chkBoxArray = [];
			$('.chkbox'+sendmailDetails+':checked').each(function() {
		            chkBoxArray.push($(this).val());
		        });
	$.ajax({
		url : "getAssignmentEmailId.do?batchId=" + chkBoxArray +"&subject=" +subject +"&description=" +description+ "&assignmentId=" +assignmentId,
		type : "GET",
		contentType : "application/json; charset=utf-8",
		success : function(call) {
		},
		error : function() {
		}
	})
}
