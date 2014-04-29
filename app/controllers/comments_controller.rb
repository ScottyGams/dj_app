class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def create
    params[:comment][:song_id] = params[:song_id]
    params[:comment][:user_id] = current_user.id
    @comment = Comment.new(params[:comment])
    @comment.save
    redirect_to music_track_path(params[:music_track_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to music_track_path(params[:music_track_id])
  end
end
