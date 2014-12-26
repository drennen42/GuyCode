require 'yaml'

ENV['S3_BUCKET_NAME'] = "guycode-assets"
ENV['AWS_ACCESS_KEY'] = "AKIAILPDC2MIASCCK22Q"
ENV['AWS_SECRET_ACCESS'] = "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"

APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]
