class Todos.Views.TasksIndex extends Backbone.View

	template: JST['tasks/index']

	events:
		'submit #form-task': 'createTask'


	initialize: ->
		@collection.on('reset', @render, this)	
		@collection.on('add', @appendTask, this)	

	render: ->
		$(@el).html(@template())
		@collection.each(@appendTask)
		this

	appendTask: (task) ->
		view = new Todos.Views.Task(model: task)
		$("#tasks").append(view.render().el)

	createTask: (task) ->
		event.preventDefault()
		@collection.create name: $('#form_task_name').val()
		$('#form_task_name').val('')
