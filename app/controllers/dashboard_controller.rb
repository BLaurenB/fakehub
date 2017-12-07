class DashboardController < ApplicationController

  def index
    connection = Faraday.new(url: "https://api.github.com/users/#{current_user.username}")
    response = connection.get do |req|
      req.headers['token'] = current_user.token
    end
    user_data = JSON.parse(response.body, symbolize_names: true)
    @hub_user = HubUser.new(user_data)
    binding.pry
  end

end
