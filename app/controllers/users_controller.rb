class UsersController < ApplicationController
	
	# Probably won't need this in the end
	def index
		@users = User.all
		render :index
	end

end
