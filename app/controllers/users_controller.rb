class UsersController < ApplicationController
	
	# Probably won't need this in the end
	def index
		@users = User.all
		render :index
	end

	#Creates a new user
	def new
		@user = User.new
		render :new
	end	

end
