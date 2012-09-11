class Todos.Views.TasksIndex extends Backbone.View

	template: JST['tasks/index']
	
	render: ->
		$(@el).html(@template(tasks: "tasks go here"))
		this