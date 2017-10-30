class Api::ThreadsController < ApplicationController

	before_action :authenticate_user

	def create
		@thread = 1
	end
end
