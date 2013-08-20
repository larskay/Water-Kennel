# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
attachUploadHandler = ->
  $('#upload').click ->
    $('#photo').click()
  $("#photo").change ->
    path = $(this).val()
    file = path.substr(path.lastIndexOf('\\') + 1)
    $("#photo_path").text(file)
  $("#born_date").datepicker({format: 'dd-mm-yyyy'})

$(document).ready attachUploadHandler
$(document).on "page:load", attachUploadHandler
