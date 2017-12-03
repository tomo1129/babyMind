Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'home#index'
	# preflight対応
	match '*path' => 'options_request#preflight', via: :options

	post 'api/user_token', to: 'user_token#create'
	namespace :api, defaults: { format: :json } do
		post 'signin/logout', to: 'signin#logout'
		resource :users do
			post 'name', to: 'users#save_name'
			post 'email', to: 'users#save_email'
			post 'password', to: 'users#save_password'
		end
		resource :initial, only: [:show]
		resource :signin, only: [:create]
		resource :signup, only: [:create]
		resource :thread do
			get 'get_new', to: 'get_new'
		end
	end

end
