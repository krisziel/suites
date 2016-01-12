class UserController < ApplicationController
  def show
    # @error = []
    # if twitter.credentials[:token] && twitter.credentials[:token_secret]
    #   @error << "logged in/no error"
    # else
    #   redirect_to '/auth/twitter'
    # end
  end
  def login
    # @user = User.new(login_params)
  end

  private
  def login_params
    params.require(:user).permit(:name, :email, :key, :secret)
  end

end
