class SessionsController < ApplicationController
  def create
    id = auth_hash.uid
    username = auth_hash.info.nickname
    image = auth_hash.info.image

    @user = User.find_or_create_by_twitter_id(id)
    @user.username = username
    @user.image = image
    @user.save

    login(@user)
    
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
