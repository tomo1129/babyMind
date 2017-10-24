class UserTokenController < Knock::AuthTokenController
	after_action :set_login_cookie

	private

	def set_login_cookie
		# cookieの保存
	end
end
