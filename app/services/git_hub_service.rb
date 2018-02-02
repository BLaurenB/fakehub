class GitHubService

  def initialize(token)
  #establish the connection using new and the urL
    @connection = Faraday.new(url: "https://api.github.com/users/")  do |f|
      f.headers['Authorization'] = "token #{token}"
      f.adapter Faraday.default_adapter
    end
  end


  def get_data(handle)
    #call get on the connection, adding headers and the remaining urI, and save it to "response"
    response = connection.get("#{handle}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_repos(handle)
    response = connection.get("#{handle}/repos")
    JSON.parse(response.body, symbolize_names: true)
  end

    private
      attr_reader :connection

end
