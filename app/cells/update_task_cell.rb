class UpdateTaskCell < Cell::Rails

	def display(args)
		@task = args[:task]

		render  # renders display.html.haml
	end

end