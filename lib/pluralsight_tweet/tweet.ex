defmodule PluralsightTweet.Tweet do
  def send(str) do
   ExTwitter.configure(:process, [
      consumer_key: System.get_env("PL_TWEET_TEST_KEY"),
      consumer_secret: System.get_env("PL_TWEET_TEST_KEY_SECRET"),
      access_token: System.get_env("PL_TWEET_TEST_ACCESS_TOKEN"),
      access_token_secret: System.get_env("PL_TWEET_TEST_ACCESS_TOKEN_SECRET"),
    ])

    ExTwitter.update(str)
  end
end

