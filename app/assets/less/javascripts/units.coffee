# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#owner a.add_fields').data('association-insertion-position', 'before').data 'association-insertion-node', 'this'
  $('#owner').bind 'cocoon:after-insert', ->
    $('#owner_from_list').hide()
    $('#owner a.add_fields').hide()
    return
  $('#owner').bind 'cocoon:after-remove', ->
    $('#owner_from_list').show()
    $('#owner a.add_fields').show()
    return
  $('#tags a.add_fields').data('association-insertion-position', 'before').data 'association-insertion-node', 'this'
  $('#tags').bind 'cocoon:after-insert', (e, tag) ->
    console.log 'inserting new tag ...'
    $('.project-tag-fields a.add-tag').data('association-insertion-position', 'after').data 'association-insertion-node', 'this'
    $(this).find('.project-tag-fields').bind 'cocoon:after-insert', ->
      console.log 'insert new tag ...'
      console.log $(this)
      $(this).find('.tag_from_list').remove()
      $(this).find('a.add_fields').hide()
      return
    return
  $('.project-tag-fields').bind 'cocoon:after-insert', (e) ->
    console.log 'replace OLD tag ...'
    e.stopPropagation()
    console.log $(this)
    $(this).find('.tag_from_list').remove()
    $(this).find('a.add_fields').hide()
    return
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
