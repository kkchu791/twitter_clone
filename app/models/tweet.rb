class Tweet < ActiveRecord::Base
  def self.our_public_tweets(username="kkchu791")
    client.user_timeline(username, count: 3)
  end

  def self.client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
    end
  end
end
