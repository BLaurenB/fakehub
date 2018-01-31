class DashboardController < ApplicationController

  def index

    git_hub_user_from_uri = params[:username] || current_user.username
    @displayed_user = ApiData.return_repo_data(current_user.token, git_hub_user_from_uri ) #right now, this just displays my user in my database, not a api collection.

  end


end
