class GamesController < ApplicationController
	
	def index
		@games = Games.all
		render :index 
		#Can take render out later, if naming convention is right
	end

end
