class MoviesController < ApplicationController
  def index
  	#@movies = Movie.all
  	@movies = Movie.search(params[:q])
  	#@movie = Movie.new
  end

  def new
  	@movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    #redirect_to action: "index"

    respond_to do |format|
      if @movie.save
        format.html { redirect_to action: "index", notice: 'Movie was successfully created.' }
        #format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new }
        #format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # validations
    def movie_params
      params.require(:movie).permit(:title, :description, :year_released)
    end

end
