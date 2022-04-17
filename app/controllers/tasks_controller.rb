class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def display
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.find(params[:task])
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def read
    @tasks = Task.find(params[:id])
  end

  def update
    @task.update(params[:id])
  end

  def delete
    @task.destroy
  end
end
