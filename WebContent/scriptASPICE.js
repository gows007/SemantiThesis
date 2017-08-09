/**
 * 
 */
// method to display expand collapse

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
    var blackListedColumns = ["Delete", "Edit", "Copy"];
    if (blackListedColumns.indexOf(columnHeader) >= 0 ){
    	return;
    }
    if(columnHeader == 'Project ID'){
    	formGroup.append('<input class="form-control" name="'+columnHeader+i+'" id="'+columnHeader+i+'" value="'+columnValues[i]+'" type="hidden" />'); 
    	modalBody.append(formGroup);
    	
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

// expandible table function for assessment page


$('.header').click(function(){
    $(this).toggleClass('expand').nextUntil('tr.header').slideToggle(100);
});

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0; // For Chrome, Safari and Opera 
    document.documentElement.scrollTop = 0; // For IE and Firefox
}

// ASPICE overview page right panel expand collapse for standards, workproducts, guidelines

$(function () {			
    $('a[data-toggle="collapse"]').on('click',function(){

var objectID=$(this).attr('href');

if($(objectID).hasClass('in'))
{
                    $(objectID).collapse('hide');
}

else{
                    $(objectID).collapse('show');
}
    });
    
    
    $('#expandAll').on('click',function(){
        
        $('a[data-toggle="collapse"]').each(function(){
            var objectID=$(this).attr('href');
            if($(objectID).hasClass('in')===false)
            {
                 $(objectID).collapse('show');
            }
        });
    });
    
    $('#collapseAll').on('click',function(){
        
        $('a[data-toggle="collapse"]').each(function(){
            var objectID=$(this).attr('href');
            $(objectID).collapse('hide');
        });
    });
    
});

