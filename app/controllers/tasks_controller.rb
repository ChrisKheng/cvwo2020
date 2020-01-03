class TasksController < ApplicationController
  before_action :load_task, only: %i[show edit update destroy]

  def index
    @tasks = Task.all
    render json: @tasks
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_param)
    if @task.save
      flash[:notice] = 'Your task is successfully saved!'
      render json: @task
    end
  end

  def update
    if @task.update(task_param)
      render json: @task
    else
      render json: @task.errors.full_messages
    end
  end

  def show
  end

  def destroy
    @task.destroy
  end

  private

  def load_task
    @task = Task.find(params[:id])
  end

  def task_param
    params.require(:task).permit(:title, :description)
  end
end
