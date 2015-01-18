class RequestController < ApplicationController

  def list
    if(!session[:user_id]||(!Vote.find(session[:user_id])))
      redirect_to root_path
    else
      @drinks = Drink.all
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

end
