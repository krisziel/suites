class SessionsController < ApplicationController
  def create
    user_key = request.env['omniauth.auth']['credentials']['token']
    user_secret = request.env['omniauth.auth']['credentials']['secret']
    session[:access_token] = user_key
    session[:access_token_secret] = user_secret
    new_user = User.create!(
      user_key: user_key,
      user_secret: user_secret,
      twitter_name: "#{client.user.name} (#{client.user.screen_name})"
    )
    session[:user_id] = new_user.id
    redirect_to list_path, notice: 'Signed in'
  end

  def show
    if session['access_token'] && session['access_token_secret']
      @user = client.user(include_entities: true)
    else
      redirect_to failure_path
    end
  end

  def error
    flash[:error] = 'Sign in with Twitter failed'
    redirect_to '/auth/twitter'
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'Signed out'
  end
end
