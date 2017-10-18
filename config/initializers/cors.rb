Rails.application.config.middleware.insert_before 0, Rack::Cors do

	if Rails.env == 'development'
		allow do
			origins 'http://localhost:3000'

			resource '*',
				headers: :any,
				methods: [:get, :post]
		end
	end
end