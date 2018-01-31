class ApiData

  attr_reader :id,
              :name,
              :image,
              :company,
              :location,
              :bio,
              :public_repos,
              :public_gists,
              :followers,
              :following

  def initialize(data={})
    @id = data[:id]
    @name = data[:name]
    @image = data[:avatar_url]
    @company = data[:company]
    @location = data[:location]
    @bio = data[:bio]
    @public_repos = data[:public_repos]
    @public_gists = data[:public_gists]
    @followers = data[:followers]
    @following = data[:following]
  end

  def self.return_repo_data(current_user, git_hub_user_from_uri)
    ApiData.new(github(current_user).get_json(git_hub_user_from_uri))
  end

private

  def self.github(current_user)
    GitHubService.new(current_user.token)
  end


end
