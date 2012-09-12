class Todos.Routers.Tasks extends Backbone.Router
	routes:
		'': 'index'
		'tasks/:id': 'show'
		
	initialize: ->
		@collection = new Todos.Collections.Tasks()
		@collection.fetch()

	index: ->
		view = new Todos.Views.TasksIndex(collection: @collection)
		$('#container').html(view.render().el)

	show: (id) ->
		alert "#{id}"