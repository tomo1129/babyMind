class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user_from_token!
  skip_before_action :authenticate_user_from_token, only: [:new, :create]
end
