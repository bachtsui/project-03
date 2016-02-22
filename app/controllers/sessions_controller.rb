class SessionsController < ApplicationController
	# Might need this later
	# before_action :logged_in?, only [:destroy]
	before_action :logged_out?, only [:new, :create]

	def new
		@user = User.new
		render :new
	end

	

end
