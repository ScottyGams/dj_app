class SongsController < ApplicationController
  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.order('name ASC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @songs }
    end
  end

  # GET /songs/1
  # GET /songs/1.json
  def show
    @song = Song.find(params[:id])
    @comment = Comment.new
  end

  # GET /songs/new
  # GET /songs/new.json
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
    @song = Song.find(params[:id])
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new(params[:song])
    @song.user = current_user
    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  # PUT /songs/1
  # PUT /songs/1.json
  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(params[:song])
      redirect_to @song
    else
      render :edit
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end
end
