# textarea maxlength support for chronogically-challenged browsers
jQuery ->
  $('textarea[maxlength]').on 'keyup blur', ->
    text = $(this).val()
    limit = $(this).attr('maxlength')
    if text.length > limit
      $(this).val(text.substr(0, limit))
