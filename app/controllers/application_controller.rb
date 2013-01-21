class ApplicationController < ActionController::Base
  protect_from_forgery

  helper Cells::Rails::ActionView

  helper_method :current_tasks_list, :current_task
#  before_filter 

  def current_tasks_list
    @current_tasks_list = Task.create("tytul","tresc",false, Time.now)
    puts @current_tasks_list
    @current_tasks_list
  end

  def current_task
    @current_tasks = Task.create("tytul2","tresc2",false, Time.now)
    @current_tasks
  end

end
