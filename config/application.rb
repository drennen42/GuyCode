require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GuyCode
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # def authenticate
    #   if APP_CONFIG['perform_authentication']
    #     authenticate_or_request_with_http_basic do | S3_BUCKET_NAME, AWS_SECRET_KEY, AWS_ACCESS_KEY |
    #       S3_BUCKET_NAME == APP_CONFIG['S3_BUCKET_NAME'] && AWS_SECRET_KEY == APP_CONFIG['AWS_SECRET_KEY'] && AWS_ACCESS_KEY == APP_CONFIG['AWS_ACCESS_KEY']
    #     end
    #   end
    # end
  end
end
