class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :finished, :undo_finished, :move]

  def index
    @tasks = policy_scope(Task)
    @todo_tasks = @tasks.where(finished: false)
    @finished_tasks = @tasks.where(finished: true)
    @task = Task.new
  end

  def show
    @comment = Comment.new
  end

  def new
    @task = Task.new
    head :ok
    authorize @task
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    authorize @task
    if @task.save
      redirect_to tasks_path(anchor: "task-#{@task.id}"), notice: "Task created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @task.update(task_params)
    @task.save

    redirect_to task_path(@task), notice: "Task updated"
  end

  def finished
    @task.finished = true
    @task.save

    redirect_to tasks_path, notice: "Task completed"
  end

  def undo_finished
    @task.finished = false
    @task.save

    redirect_to tasks_path, notice: "Task undone"
  end

  def move
    @task.insert_at(params[:position].to_i)
    authorize @task
  end

  def destroy
    @task.destroy

    redirect_to tasks_path, notice: "Task deleted"
  end

  private

  def task_params
    params.require(:task).permit(:finished, :title, :description, :deadline, :priority)
  end

  def set_task
    @task = Task.find(params[:id])
    authorize @task
  end
end
