class TweetsController < ApplicationController

  def index
  	@tweets = Tweet.includes(:user).order("created_at desc")
  end

  def new
  end

  def create
  	Tweet.create(text: tweet_params[:text], image: tweet_params[:image], user_id: current_user.id)
  	# binding.pry
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy if tweet.user_id == current_user.id
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params) if tweet.user_id == current_user.id
  end

  private
  def tweet_params
    params.permit(:text, :image)
  end
end
