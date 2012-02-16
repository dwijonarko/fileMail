# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
	$link = $("#generate")

	$dialog = $("<div id=\"dialog\"></div>").load("/generator #content").dialog(
		dialogClass:"generator_form"
		autoOpen: false
		title: "Generate Nomor Surat"
		width: 500
		height: 250
		overlay:
			backgroundColor: "#000"
			opacity: 0.5
		buttons:
				Generate: ->
					$.ajax
						url: "/generator/generate"
						type: "POST"
						data:
							form_data:
								division: $("#generator_division").val()
								code: $("#generator_code").val()
						success: (msg) ->
							$("#result").html(msg)
							if msg is "Isi field terlebih dahulu"
								$("#outgoing_mail_code").val ""
							else
								$("#outgoing_mail_code").val msg

				Close: ->
					$(this).dialog "close"
	)


	$link.click ->
		$dialog.dialog "open"
		false

