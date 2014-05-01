class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def create
    # params[:comment][:song_id] = params[:song_id]
    # params[:comment][:user_id] = current_user.id
    @comment = Comment.new(params[:comment])
    @comment.user = current_user
    @comment.song_id = params[:song_id]
    @comment.save
    redirect_to song_path(params[:song_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to song_path(params[:song_id])
  end
end
