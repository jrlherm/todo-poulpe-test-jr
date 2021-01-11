class TasksController < ApplicationController
  def index
    @tasks = current_user.tasks
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    if @task.save
      redirect_to tasks_path, notice: "Task created"
    else
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path, notice: "Task deleted"
  end

  def mark_as_done
    @task = Task.find(params[:id])
    @task.finished = true
    @task.save

    redirect_to tasks_path, notice: "Task completed"

  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :deadline)
  end
end
