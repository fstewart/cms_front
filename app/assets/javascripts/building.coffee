$(".submit").on "focusout", ->
  preview = $("#preview-url")
  currentUrl = $.trim @url

  preview.show().attr 'src', currentUrl



