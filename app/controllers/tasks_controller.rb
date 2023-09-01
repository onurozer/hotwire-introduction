class TasksController < ApplicationController
  before_action :set_task, only: %i[update destroy]

  def index
    @tasks = Task.all
  end

  def create
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_url, notice: "Task was successfully updated."
    else
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :checked)
  end
end
