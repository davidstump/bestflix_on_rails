@Films = 

  el: "#films"

  shouldInit: -> $(@el).length > 0

  init: ->
    console.log("hi there") 

$ -> 
  Films.init() if Films.shouldInit()