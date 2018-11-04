class CommentsController < ApplicationController
  def create
    @comment = Comment.new(users_message: params[:comment][:body],
                            user_id: current_user.id,
                            post_id: params[:post_id])
    @comment.save
    redirect_to post_url(params[:post_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(params[:post_id])
  end
end
