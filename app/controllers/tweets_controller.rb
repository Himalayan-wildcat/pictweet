class TweetsController < ApplicationController

  def index
  	@tweets = Tweet.all
  end

  def new
  end

  def create
  	Tweet.create(text: tweet_params[:text], image: tweet_params[:image], user_id: current_user.id)
  	# binding.pry
  end

  private
  def tweet_params
    params.permit(:text, :image)
  end
end
