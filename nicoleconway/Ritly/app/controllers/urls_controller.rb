class UrlsController < ApplicationController
  def new
  	@url = Url.new
  end

  def create 
  	url_safe_params = params.require(:url).permit(:link)
  	@url = Url.new safe_url_params
  	@url.hash_code = rand(1..100000)
  	@url.save
  	
  end

  def preview
  end

  def show
  end
end
