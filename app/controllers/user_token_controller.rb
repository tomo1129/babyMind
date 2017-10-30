class UserTokenController < Knock::AuthTokenController
	after_action :set_login_cookie

	private

	def set_login_cookie
		@jsonDecode = ActiveSupport::JSON.decode(response_body[0])['jwt']
		cookies[:minnanoKimochi] = {:value => @jsonDecode, :path => '/', :expires => 1.month.from_now }
	end

end
