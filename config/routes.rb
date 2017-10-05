Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'home#index'
	get '/friends', to: 'home#index'
	# preflight対応
	match '*path' => 'options_request#preflight', via: :options

	namespace :api, defaults: { format: :json } do
		resource :login, only: [:create], controller: :sessions
		resource :users, only: [:create]
	end

end
