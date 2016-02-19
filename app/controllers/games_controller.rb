class GamesController < ApplicationController
	
	def index
		@games = Game.all
		render :index 
		#Can take render out later, if naming convention is right
	end

	def show
		game_id = params[:id]
		@game = Game.find_by_id(game_id)
		render :show
	end
end