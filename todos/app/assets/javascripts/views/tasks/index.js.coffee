class Todos.Views.TasksIndex extends Backbone.View

	template: JST['tasks/index']

	events:
		'submit #form-task': 'createTask'


	initialize: ->
		@collection.on('reset', @render, this)	
		@collection.on('add', @render, this)	

	render: ->
		$(@el).html(@template(tasks: @collection))
		this

	createTask: (task) ->
		event.preventDefault()
		@collection.create name: $('#form_task_name').val()
