Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'home#index'
	get '/friends', to: 'home#index'
	# preflight対応
	match '*path' => 'options_request#preflight', via: :options

	namespace :api, defaults: { format: :json } do
		resource :login, only: [:create], controller: :sessions
		resource :users do
			resource :save, only: [:save_name, :save_email, :save_password] do
				post 'name', to: 'save_name'
				post 'email', to: 'save_email'
				post 'password', to: 'save_password'
			end
		end
		resource :initial, only: [:show]
	end

end
