class Movie < ActiveRecord::Base
	validates :title, :description, presence: true
	validates :description, length: {minimum: 10}
	validates :year_released, numericality: true
	validates :year_released, numericality: {greater_than: 0}

	def self.search(query)
		if query
		#@movies = Movie.where(name: params[:q]) #this won't return anything typed that is similar to name of movie
			Movie.where('title LIKE :search OR description LIKE :search OR year_released LIKE :search', { search: "%#{query}%"}) #this wil return anything close to movie name
		else
			Movie.all
  			#params[:q] #add this to controller to use parameters. we are submitting fromour index view form
  		end
  	end
end
