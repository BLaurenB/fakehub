class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :hub_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def hub_user
    connection = Faraday.new(url: "https://api.github.com/users/BLaurenB")
    response = connection.get do |req|
      req.headers['token'] = current_user.token
    end
    user_data = JSON.parse(response.body, symbolize_names: true)
    @hub_user = HubUser.new(user_data)
  end

end
