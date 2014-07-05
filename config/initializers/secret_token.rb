require 'securerandom'

def secure_token
  token_file = Rails.root.join('.select')
  if File.exists?(token_file)
    File.read(token_file)
  else
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

SampleApp::Application.config.secret_key_base = secure_token
