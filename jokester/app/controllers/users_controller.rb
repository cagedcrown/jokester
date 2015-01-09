class UsersController < ApplicationController

	before_action :authenticate_user!

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@jokes = @user.jokes
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			redirect_to 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit(:email, :password)
	end

end