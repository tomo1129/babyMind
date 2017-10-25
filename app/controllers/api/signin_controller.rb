class Api::SigninController < ApplicationController
	include ActionController::Cookies
	def logout
		cookies.delete(:minnanoKimochi)
	end
end
