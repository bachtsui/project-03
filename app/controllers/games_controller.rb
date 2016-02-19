class GamesController < ApplicationController
	
	def index
		@games = Game.all
		render :index 
		#Can take render out later, if naming convention is right
	end

end
