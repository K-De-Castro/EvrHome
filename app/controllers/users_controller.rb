class UsersController < ApplicationController
	def user
		@users = User.all
	end

	def new

	end

	def create
		#render plain: params[:user].inspect
		@user = User.new(user_params)
		@user.save
		redirect_to @user
	end

	private def user_params
		params.require(:user).permit(:name, :bio, :zip)
	end

end
