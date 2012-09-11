class Todos.Routers.Tasks extends Backbone.Router
	routes:
		'': 'index'
		'tasks/:id': 'show'
		
	index: ->
		view = new Todos.Views.TasksIndex()
		$('#container').html(view.render().el)

	show: (id) ->
		alert "#{id}"