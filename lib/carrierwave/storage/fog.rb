CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],
    :aws_secret_access_key  => ENV['AWS_SECRET_KEY'],
    # :region                 => 'eu-west-1',
    # :host                   => 's3.example.com',
    # :endpoint               => 'https://s3.example.com:8080'
  }
  config.fog_directory  = ENV['S3_BUCKET']  # required
  # config.fog_public     = false  # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>"max-age=#{365.day.to_i}"} # optional, defaults to {}
end