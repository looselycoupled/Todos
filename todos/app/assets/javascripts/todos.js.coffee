window.Todos =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
	  new Todos.Routers.Tasks()
	  Backbone.history.start()

$(document).ready ->
  Todos.init()
