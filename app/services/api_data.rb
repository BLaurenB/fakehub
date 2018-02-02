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
              :following,
              :repos


  def initialize(data={}, repos={})
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
    @repos = repos.map {|repo| Repos.new(repo)}
  end

  def self.return_repo_data(token, handle)
    ApiData.new(overview_data(token, handle), repo_data(token, handle))
  end

  def self.overview_data(token, handle)
    github(token).get_data(handle)
  end

  def self.repo_data(token, handle)
    github(token).get_repos(handle)
  end


private

  def self.github(token)
    GitHubService.new(token)
  end


end
