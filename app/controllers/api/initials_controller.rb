class Api::InitialsController < ApplicationController

	def show
		if(session[:userId])
			@user = User.find(session[:userId])
		end
		render json: {user: @user, csrfToken: session[:_csrf_token]}
	end
end
