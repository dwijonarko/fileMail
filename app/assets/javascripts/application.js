// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(document).ready(function(){
	$(".table_list tr:even").addClass("alt");

	$(".table_list tr").mouseover(function(){
		$(this).addClass("over");
	});
	$(".table_list tr").mouseout(function(){
		$(this).removeClass("over");
	});

	$( "#incoming_mail_date" ).datepicker({ dateFormat: 'yy-mm-dd' });
	$( "#outgoing_mail_date" ).datepicker({ dateFormat: 'yy-mm-dd' });
	$( "input:submit, .button" ).button();
	$( ".show" ).button({
		icons:{primary: "ui-icon-folder-open"},text: false
	});
	$( ".edit" ).button({
		icons:{primary: "ui-icon-comment"},text: false
	});
	$( ".delete" ).button({
		icons:{primary: "ui-icon-closethick"},text: false
	});

	return false;
});
