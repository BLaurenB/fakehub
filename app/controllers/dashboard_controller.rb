class DashboardController < ApplicationController

  def index

    if params[:username]
      handle = params[:username]
    else
      handle = current_user.username
    end
    @displayed_user = ApiData.return_repo_data(current_user.token, handle )

  end


end
