class RequestController < ApplicationController
  protect_from_forgery except: :kziel

  def splash
    @drinks = Drink.all
    if(cookies.signed[:user_id]&&Vote.find(cookies.signed[:user_id]))
      redirect_to list_path
    end
  end

  def list
    if(!cookies.signed[:user_id]||(!Vote.find(cookies.signed[:user_id])))
      redirect_to root_path
    else
      @drinks = Drink.all
      @votes = [];
      Vote.all.each do |vote|
        @votes.push({
          :name => vote.twitter_name,
          :drink => vote.drink_id
        })
      end
      @user = Vote.find(cookies.signed[:user_id])
      @guaranteed = false
    end
  end

  def submit
    if(!cookies.signed[:user_id]||(!Vote.find(cookies.signed[:user_id])))
      redirect_to root_path
    else
      vote = Vote.find(cookies.signed[:user_id])
      if(vote)
        vote.update(drink_id: params[:drink_id])
      else
        redirect_to error_path
      end
    end
  end

  def requests
    if(!cookies.signed[:user_id]||!Vote.find(cookies.signed[:user_id])||Vote.find(cookies.signed[:user_id]).twitter_name != "Kris Ziel (kziel)")
      redirect_to list_path
    end
  end

  def kziel
    new_client = Twitter::REST::Client.new
    new_client.consumer_key = ENV['CONSUMER_KEY']
    new_client.consumer_secret = ENV['CONSUMER_SECRET']
    new_client.access_token = ENV['ACCESS_TOKEN']
    new_client.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    headers['Access-Control-Allow-Origin'] = '*'
    count = params[:count] || 200
    since_id = params[:since_id] || 1
    exclude_replies = params[:exclude_replies] || false
    @timeline = new_client.user_timeline("kziel",{count: count, since_id:since_id, exclude_replies:exclude_replies, include_rts: true})
    render :json => @timeline, :callback => params[:callback]
  end

end
