class CommentsController < ApplicationController
  def create
    @viewthread = Viewthread.find(params[:viewthread_id])
    @comment = @viewthread.comments.create(comment_params)
    redirect_to viewthread_path(@viewthread)
  end

  def destroy
    @viewthread = Viewthread.find(params[:viewthread_id])
    @comment = @viewthread.comments.find(params[:id])
    @comment.destroy
    redirect_to viewthread_path(@viewthread)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
