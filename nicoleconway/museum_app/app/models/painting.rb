class Painting < ActiveRecord::Base

	belongs_to :user

	def self.search(query)
		if query
		#@movies = Movie.where(name: params[:q]) #this won't return anything typed that is similar to name of movie
			Painting.where('title LIKE :search OR artist LIKE :search OR museum LIKE :search', { search: "%#{query}%"}) #this wil return anything close to movie name
		else
			Painting.all
  			#params[:q] #add this to controller to use parameters. we are submitting fromour index view form
  		end
  	end


end
