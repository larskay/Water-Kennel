# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
attachUploadHandler = ->

  $("#treatment_date").datepicker({format: 'dd/mm/yyyy'})

$(document).ready attachUploadHandler
$(document).on "page:load", attachUploadHandler
