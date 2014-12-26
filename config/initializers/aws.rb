AWS.config(access_key_id:     ENV['AWS_ACCESS_KEY'],
           secret_access_key: ENV['AWS_SECRET_ACCESS'] )

S3_BUCKET_NAME = AWS::S3.new.buckets[ENV['S3_BUCKET_NAME']]