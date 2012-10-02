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

    for poster in $(".poster")
      desc = $(poster).attr("data-details")
      $(poster).qtip
        content: 
          text: desc
          title: "About This Film"
        position:
          corner:
            target: 'bottomMiddle'
            tooltip: 'topMiddle'
        style:
          name: 'red'

$ -> 
  Films.init() if Films.shouldInit()