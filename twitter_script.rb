require 'twitter'
require 'dotenv'
Dotenv.load
# In order for any of this to work, first create a .env file by copying the
# example.env file, and setting each of the environment variables equal to
# the values you got from Twitter's dev site. (If you don't want to bother
# with that I have some keys you can use.)

# Documentation for the twitter gem we're using can be found here:
# http://www.rubydoc.info/gems/twitter


class WriteABook
def self.write_book(client, topics)
  collected_tweets = []
  tweet_getter(collected_tweets, client, topics)
end

  def self.tweet_getter(collected_tweets, client, topics)
    client.filter(track: topics.join(",")) do |object|
      collected_tweets << object.text if object.is_a?(Twitter::Tweet)
      if collected_tweets.count >= 3000
        puts collected_tweets.count
        book_writer(collected_tweets)
        break
      else
        puts collected_tweets.count
      end
    end
  end

  def self.book_writer(collected_tweets)
    File.open("test.txt", "w+") do |f|
      collected_tweets.each { |element| f.puts(element) }
    end
  end
end

topics = ["stranger","champions",
  "barcelona","ruby","politics","unicorns",
  "phenomena","christmas","winter","awesome"]

  # Loads all the keys needed to access twitter's API, then creates a client
  # that you can use to post, delete, reply, etc.
  client = Twitter::Streaming::Client.new do |config|
    config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
    config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
    config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
    config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
  end

WriteABook.write_book(client, topics)
