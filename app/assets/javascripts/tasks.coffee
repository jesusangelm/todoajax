# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#title-head').on 'click', ->
    $('#task-form').slideToggle 350
    return
  $('.checkbox-submit').on 'click', ->
    $(this).parent('form').submit()
    return
  return

