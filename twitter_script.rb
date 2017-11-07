require 'twitter'
require 'dotenv'
Dotenv.load
# In order for any of this to work, first create a .env file by copying the
# example.env file, and setting each of the environment variables equal to
# the values you got from Twitter's dev site. (If you don't want to bother
# with that I have some keys you can use.)

# Documentation for the twitter gem we're using can be found here:
# http://www.rubydoc.info/gems/twitter

# Loads all the keys needed to access twitter's API, then creates a client
# that you can use to post, delete, reply, etc.
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
  config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
  config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
  config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
end

message = "Testing, testing"

puts "Sending tweet: #{message}"

# This posts the string you have in the message variable to your twitter account!
client.update(message)
