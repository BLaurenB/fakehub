class GitHubService

  def initialize(token)
  #establish the connection using new and the urL
    @connection = Faraday.new(url: "https://api.github.com/")  do |f|
      f.headers['Authorization'] = "token #{token}"
      f.adapter Faraday.default_adapter
    end
  end


  def get_json(git_hub_user_from_uri)
    #call get on the connection, adding headers and the remaining urI, and save it to "response"
    response = connection.get("users/#{git_hub_user_from_uri}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private
    attr_reader :connection


end
