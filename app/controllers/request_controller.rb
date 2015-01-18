class RequestController < ApplicationController

  def list
    @drinks = Drink.all
  end

  def submit
    if(User.find(session[:user_id]))
      redirect_to thanks_path
    else
      redirect_to error_path
    end
  end

end
