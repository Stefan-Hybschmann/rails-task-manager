class TasksController < ApplicationController
  # before_action :set_task, only: [:read]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to root_path
  end

  def edit
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params[:task])
  end

  def task_params
    # STRONG PARAMS
    params.require(:task).permit(:title, :details, :completed)
  end

  # def set_task
  #   @task = Task.find(params[:id])
  # end
end
