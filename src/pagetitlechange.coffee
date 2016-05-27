class PageTitleChange
  constructor: (noFocusTitle, focusTitle) ->
    @noFocusTitle = noFocusTitle
    @focusTitle = focusTitle

  init: ->
    @listenToChange()

  listenToChange: ->
    if typeof document.hidden != 'undefined'
      hidden = 'hidden'
      visibilityChange = 'visibilitychange'
      state = 'visibilityState'

    document.addEventListener visibilityChange, (->
      @setTitle document[state]
    ), false

  setTitle: (state) ->
    title = if state == 'hidden' then @noFocusTitle else @focusTitle
    document.title = title

module.exports = PageTitleChange
