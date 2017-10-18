class Api::SignupsController < ApplicationController
	def create
		ActiveRecord::Base.transaction do
			@user = User.new user_params

			if @user.save!
				set_user_name(@user)
				render json: @user
			else
				render json: { error: t('user_create_error') }, status: :unprocessable_entity
			end
		end
	end

	private

	def user_params
		params.require(:user).permit(:email, :password)
	end

	def set_user_name(user)
		random = Random.new
		Relation.all.each do |relate|
			@loop_count = 0
			@digits = 4
			@numeric = ('0'..'9')

			@relateSamples = SampleName.where(relation_id: relate.id)
			@sampleCount = @relateSamples.to_a.count()
			@sampleRandom = random.rand(1..@sampleCount)
			@relateSample = @relateSamples[@sampleRandom - 1]
			while @loop_count < 10000 do
				@o1 = random.rand(0..9)
				@o2 = random.rand(0..9)
				@o3 = random.rand(0..9)
				@o4 = random.rand(0..9)
				@endId = @o1.to_s + @o2.to_s + @o3.to_s + @o4.to_s
				@loop_count += 0
				@sampleName = @relateSample.name + @endId

				if !UserName.find_by(name: @sampleName)
					UserName.create(user_id: user.id, relation_id: relate.id, name: @sampleName)
					break
				end
			end
		end
	end

end
