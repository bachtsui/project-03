class GamesController < ApplicationController
	
	def index
		@games = Game.all
		render :index 
		#Can take render out later, if naming convention is right
	end

	def show
		game_id = params[:id]
		@game = Game.find_by_id(game_id)

		if current_user !=nil
      @user = User.find_by_id(current_user.id)
    else
      current_user = nil
    end
    
	end
end
