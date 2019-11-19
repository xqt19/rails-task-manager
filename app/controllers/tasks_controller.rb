class TasksController < ApplicationController
  def home
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to root_path
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def create
    new_task = Task.new(task_params)

    if new_task.save
      redirect_to root_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
