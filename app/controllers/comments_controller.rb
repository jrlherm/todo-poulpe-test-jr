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
      redirect_to task_path(@task, anchor: "comment-#{@comment.id}"), notice: "Comment added"
    else
      render 'tasks/show'
    end
  end

  def destroy
    @task = Task.find(params[:task_id])
    @comment = @task.comments.find(params[:id])
    authorize @comment
    @comment.destroy

    redirect_to task_path(@task, anchor: "comment-#{
    if !@task.comments.empty?
      @task.comments.first.id
    end
    }"), notice: "Comment deleted"
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
