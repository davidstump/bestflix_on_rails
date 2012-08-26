@Films = 

  el: "body"

  shouldInit: -> $(@el).length > 0

  init: ->
    @bind()

  bind: ->
    $("#featured ul").roundabout
      easing: "easeOutInCirc"
      duration: 600

    $("#date_pickyear").change ->
      document.location = "/films/" + this.value

$ -> 
  Films.init() if Films.shouldInit()