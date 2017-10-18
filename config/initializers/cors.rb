Rails.application.config.middleware.insert_before 0, Rack::Cors do

	if Rails.env == 'development'
		allow do
			origins ENV["ALLOW_ORIGIN"]

			resource '*',
				headers: :any,
				methods: [:get, :post, :put, :patch, :delete, :options, :head]
		end
	end
end