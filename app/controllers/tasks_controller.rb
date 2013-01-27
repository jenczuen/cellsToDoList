class TasksController < ApplicationController

	def index
		@current_tasks = Task.all
		if params[:id]
			@current_task = Task.find(params[:id])
		else
			@current_task = Task.new
		end
	end

	def create
		task = Task.new
		task.title = params[:task][:title]
		task.body = params[:task][:body]
		task.done = false
		task.date = Time.now
		task.save
		redirect_to "/"
	end

	def edit
		task = Task.find(params[:id])
		redirect_to :controller => 'tasks', :action => 'index', :id => task.id
	end

	def update
		task = Task.find(params[:id])
		task.title = params[:task][:title]
		task.body = params[:task][:body]
		task.save
		redirect_to "/"
	end

	def destroy
		task = Task.find(params[:id])
		if task
			task.destroy
		end
		redirect_to "/"
	end
end
