class ApiData

  attr_reader :id,
              :name,
              :image,
              :company,
              :email,
              :location,
              :bio,
              :public_repos,
              :public_gists,
              :stars,
              :followers,
              :following
              # :repos,


  def initialize(data={})
    @id = data[:id]
    @name = data[:name]
    @image = data[:avatar_url]
    @company = data[:company]
    @location = data[:location]
    @email = data[:email]
    @bio = data[:bio]
    @public_repos = data[:public_repos]
    @public_gists = data[:public_gists]
    @stars = data[:stars]
    @followers = data[:followers]
    @following = data[:following]
    # @repos = data[:repositories]
  end

  def self.return_repo_data(token, git_hub_user_from_uri)
    ApiData.new(github(token).get_data(git_hub_user_from_uri))
  end

private

  def self.github(token)
    GitHubService.new(token)
  end


end
