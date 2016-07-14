class CommentsController < ApplicationController
  def create
    @job = Job.find(params[:job_id])
    @comment = @job.comments.create(comment_params)
    redirect_to static_page_path(@job)
  end

  def destroy
    @job = Job.find(params[:job_id])
    @comment = @job.comments.find(params[:id])
    @comment.destroy
    redirect_to @job
  end
  private

  def comment_params
    params.require(:comment).permit(:content).merge(commenter: current_user.email)
  end
end
