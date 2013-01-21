class TasksListCell < Cell::Rails

  def display(args)
    @tasks_list = args[:tasks_list]

    render  # renders display.html.haml
  end

end
