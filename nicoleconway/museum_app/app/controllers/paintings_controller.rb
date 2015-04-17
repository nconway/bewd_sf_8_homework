class PaintingsController < ApplicationController
  before_action :set_painting, only: [:show, :edit, :update, :destroy]

  def index
  	@paintings = Painting.search(params[:q])
  	#@paintings = Painting.all
  	@user = current_user
  end

  def new
  end

  def show
  end

  def edit
  end

  def search
  end

  def update
    respond_to do |format|
      if @painting.update(painting_params)
        format.html { redirect_to @painting, notice: 'Painting was successfully updated.' }
        format.json { render :show, status: :ok, location: @painting }
      else
        format.html { render :edit }
        format.json { render json: @painting.errors, status: :unprocessable_entity }
      end
    end
  end

  def painting_params
      params.require(:painting).permit(:title, :artist, :museum)
  end

  private
  def set_painting
      @painting = Painting.find(params[:id])
  end
end
