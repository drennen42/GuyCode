class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def authenticate
  #   if APP_CONFIG['perform_authentication']
  #     authenticate_or_request_with_http_basic do |S3_BUCKET, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY|
  #       S3_BUCKET == APP_CONFIG['S3_BUCKET'] && AWS_ACCESS_KEY_ID == APP_CONFIG['AWS_ACCESS_KEY_ID'] && AWS_SECRET_ACCESS_KEY == APP_CONFIG['AWS_SECRET_ACCESS_KEY']
  #     end
  #   end
  # end
end
