class DashboardController < ApplicationController

  def index

    if params[:username]
      handle = params[:username]
    else
      handle = current_user.username
    end
    @displayed_user = ApiData.return_repo_data(current_user.token, handle )
    @params = params
    @root = "http://localhost:3000/"


  end


end
