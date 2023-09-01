class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :checked)
  end
end
