class DashboardController < ApplicationController

  git_hub_user_from_uri = current_user.username
  # Need If/Else logi git_hub_user_from_uri = params[:user]


  def index
    @displayed_user = ApiData.new(git_hub_user_from_uri) #right now, this just displays my user in my database, not a api collection.
  end


end
