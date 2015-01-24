class SessionsController < ApplicationController
  def create
    if(cookies.signed[:user_id]&&Vote.find(cookies.signed[:user_id]))
      redirect_to list_path
    end
    user_key = request.env['omniauth.auth']['credentials']['token']
    user_secret = request.env['omniauth.auth']['credentials']['secret']
    cookies.signed[:access_token] = {
      value: user_key,
      expires: 1.month.from_now
    }
    cookies.signed[:access_token_secret] = {
      value: user_secret,
      expires: 1.month.from_now
    }
    existing = Vote.where(twitter_name: "#{client.user.name} (#{client.user.screen_name})")
    if existing.length > 0
      cookies.signed[:user_id] = {
        value: existing[0].id,
        expires: 1.month.from_now
      }
    else
      new_user = Vote.create!(
        user_key: user_key,
        user_secret: user_secret,
        twitter_name: "#{client.user.name} (#{client.user.screen_name})"
      )
      cookies.signed[:user_id] = {
        value: new_user.id,
        expires: 1.month.from_now
      }
    end
    redirect_to list_path, notice: 'Signed in'
  end

  def show
    if cookies.signed['access_token'] && cookies.signed['access_token_secret']
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
