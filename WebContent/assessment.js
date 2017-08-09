function fnExcelReport()
{
	getAssessmentByProjectId();
      var tab_text="<table border='2px'><tr bgcolor='#e6e6ff'>";
      var textRange; var j=0;
      tab = document.getElementById('example'); // id of table

      for(j = 0 ; j < tab.rows.length ; j++) 
      {    
    	  tab_text=tab_text+tab.rows[j].innerHTML+"</tr>";
    	  
    	 
            //tab_text=tab_text+"</tr>";
            
           
            
      }

      tab_text=tab_text+"</table>";


      var ua = window.navigator.userAgent;
      var msie = ua.indexOf("MSIE "); 

      if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
      {
         txtArea1.document.open("txt/html","replace");
         txtArea1.document.write(tab_text);
         txtArea1.document.close();
         txtArea1.focus(); 
         sa=txtArea1.document.execCommand("SaveAs",true,"Global View Task.xls");
      }  
      else //other browser not tested on IE 11
         sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));  
        return (sa);
}


$(document).ready(function () {
	
	
//function to collapse expand rows in assessment page
	$('.header').click(function(){
	     $(this).toggleClass('expand').nextUntil('tr.header').slideToggle(100);
	});
	
	function getAssessmentByProjectId(){
		 var tab_text="<table border='2px'><tr bgcolor='#e6e6ff'>";
		 var textRange; var j=0;
		 tab = document.getElementById('example');
		// tab.rows[2].deleteCell(0);// removing "Delete" from table header in excel
  	 
	     tab_text=tab_text+tab.rows[2].innerHTML+"</tr>";// Printing from Project id onwards
	     tab.rows[2].deleteCell(9);// removing "Delete" from table header in excel
		
		$('#example tr').each(function(){
			var isColorGreen = false;
			var isColorRed = false;
			var isColorYellow = false;
			var elements = '';
			$(this).find('td').each(function(){
				if($(this).text() == 'Achieved'){
					isColorGreen = true;
				}
				if($(this).text() == 'Not achieved'){
					isColorRed = true;
				}
				
				if($(this).text() == 'Partially achieved'){
					isColorYellow = true;
				}
				if($(this).find('button,input.btn').length > 0){
					console.log('Button',$(this).html());
				}
				console.log($(this).find('button,input.btn').length);
				if($(this).find('button,input.btn').length <= 0){
					elements =  elements+"<td>"+$(this).html()+"</td>";
					
				}
				
				console.log(elements);
			});
			if(isColorGreen){
				tab_text = tab_text+'<tr bgcolor="#009933">';
			}
			if(isColorRed){
				tab_text = tab_text+'<tr bgcolor="#FF0000">';
			}
			if(isColorYellow){
				tab_text = tab_text+'<tr bgcolor="#FFFF00">';
			}
			tab_text=tab_text+elements+"</tr>";
		});
		
		tab_text=tab_text+"</table>";
		
		return tab_text;
	}

	
	$('#btnExport').on('click', function() {
		var tab_text = getAssessmentByProjectId();
		window.parent.location.reload();

	    var ua = window.navigator.userAgent;
	    var msie = ua.indexOf("MSIE "); 

	    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
	    {
	       txtArea1.document.open("txt/html","replace");
	       txtArea1.document.write(tab_text);
	       txtArea1.document.close();
	       txtArea1.focus(); 
	       sa=txtArea1.document.execCommand("SaveAs",true,"Global View Task.xls");
	    }  
	    else //other browser not tested on IE 11
	       sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));  
	      return (sa);
	      
	      
	 });



	
// clickable table to expand assessment details


//to change color of assessment based on "Rating" column values
//using jQuery to populate the table cells


//var table1= document.getElementById('example');
//
//var row1=table1.getElementsByTagName("tr");
//var rowlen = row1.length;
//var cells = null;
//
//for (var i=0; i<rowlen;i++) {
//	var hdr = row1[i].getElementsByTagName("th");
////	document.writeln("Header Length: "+hdr.length);
//	
//	
//		cells = row1[i].getElementsByTagName("td");
//		//document.writeln("Column Length: "+cells.length);
//		for (var j=0; j<cells.length;j++) {
//		   if (cells[j].innerHTML == "Ratings"){
//			   row1[i].style.backgroundColor = 'pink';
//		    }
//		   else if(cells[j].innerHTML == "Achieved"){
//			   row1[i].style.backgroundColor = 'green';
//		    }
//		   else if(cells[j].innerHTML == "Partially achieved"){
//			   row1[i].style.backgroundColor = 'orange';
//		    }
//		   else if(cells[j].innerHTML == "Not achieved"){
//			   row1[i].style.backgroundColor = 'red';
//		    }
//		   else{
//			   row1[i].style.backgroundColor = 'white';
//		   }
//		   
//		}
//	}





// html to excel file download for assessment table
//javascript:window.open(window.open('data:application/vnd.ms-excel,' + document.getElementById('example').outerHTML.replace(/ /g, '%20')));

//function fnExcelReport()
//{
//      var tab_text="<table border='2px'><tr bgcolor='#e6e6ff'>";
//      var textRange; var j=0;
//      tab = document.getElementById('example'); // id of table
//
//      for(j = 0 ; j < tab.rows.length ; j++) 
//      {     
//            tab_text=tab_text+tab.rows[j].innerHTML+"</tr>";
//            //tab_text=tab_text+"</tr>";
//      }
//
//      tab_text=tab_text+"</table>";
//
//
//      var ua = window.navigator.userAgent;
//      var msie = ua.indexOf("MSIE "); 
//
//      if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
//      {
//         txtArea1.document.open("txt/html","replace");
//         txtArea1.document.write(tab_text);
//         txtArea1.document.close();
//         txtArea1.focus(); 
//         sa=txtArea1.document.execCommand("SaveAs",true,"Global View Task.xls");
//      }  
//      else //other browser not tested on IE 11
//         sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));  
//        return (sa);
//}


//auto populate new assessment on selection of project id


function updateText(type) { 
 var id = type+'Text';
 document.getElementById(id).value = document.getElementById(type).value;
}

function ConfirmDelete()
{
		var x = confirm("Are you sure you want to delete?");
		if (x)
			return true;
		else 
			return false;
}

//Modal for Edit button

$(".btn[data-target='#myModal']").click(function() {
    var columnHeadings = $("thead tr").map(function() {
              return $(this).text();
           }).get();
    columnHeadings.pop();
    var columnValues = $(this).parent().siblings().map(function() {
              return $(this).text();
    }).get();
var modalBody = $('<div id="modalContent"></div>');
//var modalForm = $('<form role="form" name="modalForm" action = "" method="post"></form>');
$.each(columnHeadings, function(i, columnHeader) {
    var formGroup = $('<div class="form-group"></div>');
    formGroup.append('<label for="'+columnHeader+'">'+columnHeader+'</label>');
    formGroup.append('<input class="form-control" name="'+columnHeader+i+'" id="'+columnHeader+i+'" value="'+columnValues[i]+'" />'); 
    modalBody.append(formGroup);
});
//modalBody.append(modalForm);
$('.modal-body').html(modalBody);
});
$('.modal-footer .btn-primary').click(function() {
	$('form[name="modalForm"]').submit();
});


//for redirecting to different page on selection of a project id from dropdown in assessment page

$(document).on('click', '.filter-by-projectid', function() {

   // var option = $(this).data('projectid');  
    var option = $('#filter-projectid :selected').val(); 
    if (option != undefined) {
        window.location = 'http://localhost:8080/SecurityCheck/assessment.jsp?projectid=' + option;
    }
 });
// auto populate assessment table data on selection of project id from dropdown list

});