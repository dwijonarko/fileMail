# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
	$("#btn_submit").on "click", ->
		$.ajax
			url: "generate"
			type: "POST"
			data:
				form_data:
					division: $("#generator_division").val()
					code: $("#generator_code").val()
			success: (msg) ->
				$("#result").html(msg)
		false