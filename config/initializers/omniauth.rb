OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1545092652430493', '63af3f711f3059e8d7a1a05bc167517c',
  {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end