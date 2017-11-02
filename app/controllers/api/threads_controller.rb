class Api::ThreadsController < ApplicationController

	before_action :authenticate_user

	def create
		@relation = Relation.find_by_key(params['relation'])
		@user = User.find(current_user.id)

		@threadBasis = ThreadBasis.new
		@threadBasis.title = params['title']
		@threadBasis.body = params['body']
		@threadBasis.relation = @relation
		@threadBasis.user = @user

		if @threadBasis.save!
			render json: @threadBasis
		else
			render json: { error: t('user_create_error') }, status: :unprocessable_entity
		end
	end

	def get_new
		@threadBasis = ThreadBasis.all.order(id: :asc).limit(5)
	end
end
