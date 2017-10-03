Rails.application.config.middleware.insert_before 0, Rack::Cors do
	# TODO 本番ではもっと厳しく
	allow do
		origins '*'

		resource '*',
			headers: :any,
			methods: [:get, :post, :put, :patch, :delete, :options, :head]
	end
end