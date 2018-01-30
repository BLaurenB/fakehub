class GitHubService

  #establish the connection using new and the urL
  connection = Faraday.new(url: "https://api.github.com/")  do |f|
    f.headers['Authorization'] = "token #{current_user.token}"
    f.adapter Faraday.default_adapter
  end

  #call get on the connection, adding headers and the remaining urI, and save it to "response"
  response = connection.get("#{params[see if there's a key, or if it should be regex'ed off the end of the uri]}")

  #create a variable to hold a hash that we get back from the API call
  api_data = JSON.parse(response.body, symbolize_names: true)
  byebug
  end

end
