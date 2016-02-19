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

	def create
		@user = User.new(user_params)
		redirect_to user_path(@user)

	# Use this Code when we create sessions

	# if @user.save
  #     login(@user) 
  #     redirect_to @user
  #   else
  #     flash[:error] = @user.errors.full_messages.join(", ")
  #     redirect_to new_user_path
  #   end
	end

	def show
		@user = User.find_by_id(params[:id])
		render :show
	end


	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	end

end
