class CreateTaskCell < Cell::Rails

	def display(args)
		@task = args[:task]

		render
	end

end
