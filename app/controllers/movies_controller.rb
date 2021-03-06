class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :update, :destroy]

  # GET /movies
  def index 
    @movies = Movie.all.order('created_at DESC')
    render json: @movies, include: [:category]
  end

  # GET /movies/1
  def show
    render json: @movie
  end

  # POST /movies
  def create
    # binding.pry
    @movie = Movie.new(movie_params)
    if @movie.save
      render json: @movie
      # , status: :created, location: @movie   
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
    render json: @movie
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_params
      params.require(:movie).permit(:title, :image_url, :description, :watch, :category_attributes, :id, :category_name, :category, :category_id)
    end
end