class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]

  def new
    @comment = Comment.new(task_id: params[:task_id])
  end

  def create
    @task = Task.find(params[:task_id])
    @comment = Comment.new(comment_params)
    @comment.task = @task
    authorize @comment

    if @comment.save
      flash[:success] = "Comment successfully added"
      redirect_to task_path(@task)
    else
      render 'tasks/show'
    end
  end

  def destroy
    @task = Task.find(params[:task_id])
    @comment = @task.comments.find(params[:id])
    authorize @comment
    @comment.destroy

    redirect_to task_path(@task)
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
