class ApplicationController < ActionController::API

	include Knock::Authenticable
	# ここで毎回headerのチェックかな
	before_action :validate_header

	private

	def validate_header
		@requestParam = params['controller'].split("/")
		if @requestParam[0] == 'api'
			if request.headers['X-Requested-With'] != 'XMLHttpRequest'
				render status: 401, plain: 'param Error'
			end
			if request.headers['X-From'] != request.referer
				render status: 401, plain: 'param Error'
			end
		end
	end
end
