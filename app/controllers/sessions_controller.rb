class SessionsController < ApplicationController
# skip_before_action :verify_authenticity_token, only: :create

  def create
    if user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
    end
    redirect_to "/#{user.username}"
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
