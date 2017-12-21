class GitHubService

  connection = Faraday.new(url: "https://api.github.com/user")

  response = connection.get do |req|
    req.headers['Authorization'] = "token #{current_user.token}"
  end

  user_data = JSON.parse(response.body, symbolize_names: true)
    #to get all the info I want, I just need to make certain API calls and then ammend a hash to have all the data unnested

# 

end
