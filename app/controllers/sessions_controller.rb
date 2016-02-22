class SessionsController < ApplicationController
	# Might need this later
	# before_action :logged_in?, only [:destroy]
	before_action :logged_out?, only [:new, :create]

	def new
		@user = User.new
		render :new
	end

	def create
		@user = User.confirm(user_params)
		if @user
			login(@user)
			#redirect_to user_path(@user)
			redirect_to @user
			#believe this is the shortcut
		else
			redirect_to new_session_path
		end		
	end

	def destroy
		logout
		redirect_to root_path
	end


	private
	def user_params
		params.require(:user).permit(:email, :password)
	end

end
