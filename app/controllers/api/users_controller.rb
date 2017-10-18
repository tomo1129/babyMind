class Api::UsersController < ApplicationController

	# Headerにjwtのcookieを設置していれば通る
	before_action :authenticate_user

	def show
		@userName = UserName.where(user_id: current_user.id)
		render json: @userName
	end

end
