class TasksController < ApplicationController
  before_action :set_task, only: %i[update destroy]

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_url, notice: "Task was successfully created."
    end
  end

  def update
    if @task.update(task_params)
      render @task
      # format.html { redirect_to tasks_url, notice: "Task was successfully updated." }
    else
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :checked)
  end
end
