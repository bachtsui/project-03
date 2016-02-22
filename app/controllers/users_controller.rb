class UsersController < ApplicationController
	#If logged in, only have actions to edit, update and destroy
	before_action :logged_in?, only: [ :edit, :update, :destroy]

	#If logged out, only have actions to new and create
  before_action :logged_out?, only: [:new, :create]
	
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

		if @user.save
      login(@user) 
      redirect_to @user
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      redirect_to new_user_path
    end
	end

	def show
		@user = User.find_by_id(params[:id])
		render :show
	end

	def edit
		@user = User.find_by_id(params[:id])
		unless current_user == @user
			redirect_to user_path(@user)
			flash[:notice] = "You can only edit your own profile."
		end
	end

	def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user)
      flash[:notice] = "Successfully Updated Profile"
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    if current_user == @user
      @user.destroy
      flash[:notice] = "Successfully deleted user #{@user.last_name}"
      redirect_to root_path
    else
      flash[:notice] = "You can't delete that user silly willy."
      redirect_to user_path(@user)
    end
  end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	end

end
