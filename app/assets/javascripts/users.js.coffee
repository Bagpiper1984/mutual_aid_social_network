# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	$('.users li .row .span4 .small_avatar > img ').click -> 
	  window.location.href='users/' + $(this).parent().attr("id")
