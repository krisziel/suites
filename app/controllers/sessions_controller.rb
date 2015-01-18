class SessionsController < ApplicationController
  def create
    if(session[:user_id]&&Vote.find(session[:user_id]))
      redirect_to list_path
    end
    user_key = request.env['omniauth.auth']['credentials']['token']
    user_secret = request.env['omniauth.auth']['credentials']['secret']
    session[:access_token] = user_key
    session[:access_token_secret] = user_secret
    existing = Vote.where(twitter_name: "#{client.user.name} (#{client.user.screen_name})")
    if existing
      session[:user_id] = existing[0].id
    else
      new_user = Vote.create!(
        user_key: user_key,
        user_secret: user_secret,
        twitter_name: "#{client.user.name} (#{client.user.screen_name})"
      )
    end
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
