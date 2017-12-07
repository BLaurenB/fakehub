class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :hub_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def hub_user
    connection = Faraday.new(url: "https://api.github.com/user")

    response = connection.get do |req|
      req.headers['Authorization'] = "token #{current_user.token}"
    end

    user_data = JSON.parse(response.body, symbolize_names: true)
      #to get all the info I want, I just need to make certain API calls and then ammend a hash to have all the data unnested
    @hub_user = HubUser.new(user_data)
  end

end
