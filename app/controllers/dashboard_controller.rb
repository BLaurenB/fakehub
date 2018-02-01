class DashboardController < ApplicationController

  def index

    if params[:username] 
      git_hub_user_from_uri = params[:username]
    else  
      git_hub_user_from_uri = current_user.username
    end 
    @displayed_user = ApiData.return_repo_data(current_user.token, git_hub_user_from_uri ) #right now, this just displays my user in my database, not a api collection.

  end


end
