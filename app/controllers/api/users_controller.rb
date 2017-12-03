class Api::UsersController < ApplicationController

	# Headerにjwtのcookieを設置していれば通る
	include JSONAPI::ActsAsResourceController
	before_action :authenticate_user

	def show
		@userName = UserName.where(user_id: current_user.id)
		render json: @userName
	end

	def save_name
		@a = 1
	end
end
