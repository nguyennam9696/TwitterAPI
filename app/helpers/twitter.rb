def tweet(t)
  client = Twitter::REST::Client.new do |config|
    # identify which app is using the api
    config.consumer_key        = ENV['CONSUMER_KEY']
    config.consumer_secret     = ENV['CONSUMER_SECRET']
    # identify which user is using the api
    config.access_token        = ENV['ACCESS_TOKEN']
    config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
  end
  client.update(t)
end
