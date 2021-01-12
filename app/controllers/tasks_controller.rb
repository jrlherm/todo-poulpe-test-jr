class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :finished]

  def index
    @tasks = policy_scope(Task)
  end

  def show
  end

  def new
    @task = Task.new
    authorize @task
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    authorize @task

    if @task.save
      redirect_to tasks_path, notice: "Task created"
    else
      render :new
    end
  end


  def edit
  end

  def update
    @task.update(task_params)
    @task.save
    # raise
    redirect_to task_path(@task), notice: "Task updated"
  end

  def destroy
    @task.destroy

    redirect_to tasks_path, notice: "Task deleted"
  end

  def finished
    @task.finished = true
    @task.save

    redirect_to tasks_path, notice: "Task completed"
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :deadline, :finished, :priority)
  end

  def set_task
    @task = Task.find(params[:id])
    authorize @task
  end
end
