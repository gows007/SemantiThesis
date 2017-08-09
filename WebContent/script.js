/**
 * 
 */

function choosentext(textID, dropdownID, ref) {
	var check = true;

	if (ref == "x") {
		check = false;
	}

	var myref = document.getElementById(ref);
	var mytextbox = document.getElementById(textID);
	var mydropdown = document.getElementById(dropdownID);

	mytextbox.value = mydropdown.value;

	if (check) {
		myref.innerHTML = mydropdown.options[mydropdown.selectedIndex].text
		myref.value = mydropdown.options[mydropdown.selectedIndex].text
	}
}

function openView(myDiv, btn) {
	// Get the modal
	var divelement = document.getElementById(myDiv);
	// Get the button that opens the modal
	var btnav = document.getElementById(btn);
	// When the user clicks the button, open the modal
	divelement.style.display = "block";
	btnav.style.display = "none";
}

function openModal(myModal, myBtn, mySpan) {
	console.log("Console: " + myModal, myBtn, mySpan);
	// Get the modal
	var modalav = document.getElementById(myModal);
	// Get the button that opens the modal
	var btnav = document.getElementById(myBtn);
	// Get the <span> element that closes the modal
	var spanav = document.getElementById(mySpan);
	// When the user clicks the button, open the modal
	modalav.style.display = "block";

	// When the user clicks on <span> (x), close the modal
	spanav.onclick = function() {
		modalav.style.display = "none";
	}
}

//function to refresh page (Assets/Attacks) after adding a new Asset/Attack
	function refreshParent() {
        window.top.location.reload();
        var message = document.getElementById('update');
        message.innerHTML = "Updated successfully";
        setTimeout(function(){
            document.getElementById('update').style.display = "block";
            },5000);
	}

	function ConfirmDelete()
	{
			var x = confirm("Are you sure you want to delete?");
			if (x)
				return true;
			else 
				return false;
	}
	
	
	
	function searchFor(searchInput, rowstart, colstart, colend) {
	console.log("OKAAYYY !!!");
	var input, filter, found, table, tr, td, i, j, ta;
	input = document.getElementById(searchInput);
	filter = input.value.toUpperCase();
	table = document.getElementById("tftable");
	tr = table.getElementsByTagName("tr");
	for (i = rowstart; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td");

		for (j = colstart; j <= colend; j++) {

			if (j == colstart) {
				sel = td[j].getElementsByTagName("select");
				opt = sel[0].getElementsByTagName("option");

				if (opt[0].innerHTML.toUpperCase().indexOf(filter) > -1) {
					found = true;
				}
			}

			if (j == colend) {
				ta = td[j].getElementsByTagName("textarea");

				if (ta[0].innerHTML.toUpperCase().indexOf(filter) > -1) {
					found = true;
					console.log("Gefunden..");
				}

			}

		}
		if (found) {
			tr[i].style.display = "";
			found = false;
		} else {
			tr[i].style.display = "none";
		}
	}
}

function searchInColumn(searchInput, rowstart, colstart, colend) {
	var input, filter, found, table, tr, td, i, j;
	input = document.getElementById(searchInput);
	filter = input.value.toUpperCase();
	table = document.getElementById("tftable");
	tr = table.getElementsByTagName("tr");
	for (i = rowstart; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td");
		for (j = colstart; j <= colend; j++) {
			if (td[j].innerHTML.toUpperCase().indexOf(filter) > -1) {
				found = true;
			}
		}
		if (found) {
			tr[i].style.display = "";
			found = false;
		} else {
			tr[i].style.display = "none";
		}
	}
}
//js for collapsible list view
function tree(){
	var tree = document.querySelectorAll('ul.tree a:not(:last-child)');
	for(var i = 0; i < tree.length; i++){
	    tree[i].addEventListener('click', function(e) {
	        var parent = e.target.parentElement;
	        var classList = parent.classList;
	        if(classList.contains("open")) {
	            classList.remove('open');
	            var opensubs = parent.querySelectorAll(':scope .open');
	            for(var i = 0; i < opensubs.length; i++){
	                opensubs[i].classList.remove('open');
	            }
	        } else {
	            classList.add('open');
	        }
	    });
	}
	}
//This only line code describes to bind datatable functionalities like searching, sorting and paging to our table.
$(document).ready(function(){
	$('#dataTable').dataTable();
});


//Modal for Edit button

$(".btn[data-target='#myModal']").click(function() {
    var columnHeadings = $("thead th").map(function() {
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
    var blackListedColumns = ["Delete", "Edit", "Copy", "Project ID", "Asset ID"];
    if (blackListedColumns.indexOf(columnHeader) >= 0 ){
    	return;
    }
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


//Modal for Copy button

$(".btn[data-target='#modalCopy']").click(function() {
    var columnHeadings = $("thead th").map(function() {
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
    var blackListedColumns = ["Delete", "Edit","Asset ID"];
    if (blackListedColumns.indexOf(columnHeader) >= 0 ){
    	return;
    }
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
