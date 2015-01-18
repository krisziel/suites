class RequestController < ApplicationController

  def splash
    if(session[:user_id]&&Vote.find(session[:user_id]))
      redirect_to list_path
    end
  end

  def list
    if(!session[:user_id]||(!Vote.find(session[:user_id])))
      redirect_to root_path
    else
      @drinks = Drink.all
      @user = Vote.find(session[:user_id])
    end
  end

  def submit
    if(!session[:user_id]||(!Vote.find(session[:user_id])))
      redirect_to root_path
    else
      vote = Vote.find(session[:user_id])
      if(vote)
        vote.update(drink_id: params[:drink_id])
      else
        redirect_to error_path
      end
    end
  end

  def requests
    if(!session[:user_id]||!Vote.find(session[:user_id])||Vote.find(session[:user_id]).twitter_name != "Kris Ziel (kziel)")
      redirect_to list_path
    end
  end

  def kziel
    @timeline = client.user_timeline("kziel",{count: 200, include_rts: true})
  end

end
