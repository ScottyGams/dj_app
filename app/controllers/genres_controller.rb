class GenresController < ApplicationController
  # GET /genres
  # GET /genres.json
  def index
    @genres = Genre.order('name ASC')
  end
  

  # GET /genres/1
  # GET /genres/1.json
  def show
    @genre = Genre.find(params[:id])
  end

  # GET /genres/new
  # GET /genres/new.json
  def new
    @genre = Genre.new
  end

  # GET /genres/1/edit
  def edit
    @genre = Genre.find(params[:id])
  end

  # POST /genres
  # POST /genres.json
  def create
    @genre = Genre.new(params[:genre])
    @genre.save
    redirect_to @genre
  end

  # PUT /genres/1
  # PUT /genres/1.json
  def update
    @genre = Genre.find(params[:id])
    @genre.update_attributes(params[:genre])
    redirect_to @genre
  end

  # DELETE /genres/1
  # DELETE /genres/1.json
  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    redirect_to genres_path
  end
end
