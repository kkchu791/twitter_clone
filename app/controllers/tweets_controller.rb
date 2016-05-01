class TweetsController < ApplicationController
  def index
    @tweet = Tweet.our_public_tweets
  end

  def show
    if params[:id].present?
      @tweet = Tweet.our_public_tweets(params[:id])
    end
  end
end