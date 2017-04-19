# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#tasks').bind 'cocoon:before-insert', (e, task_to_be_added) ->
    console.log task_to_be_added
    task_to_be_added.fadeIn 'slow'
    return
  $('#tasks').bind 'cocoon:after-insert', (e, added_task) ->
    #added_task.css("background","red");
    return
  $('#tasks').bind 'cocoon:before-remove', (e, task) ->
    $(this).data 'remove-timeout', 1000
    task.fadeOut 'slow'
    return
  #$('body').tabs();
  return