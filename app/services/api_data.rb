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
              :repos,
              :repos,
              :repos,
              :repos,
              :repos,


  def initialize(data, repos, starred, followers, following)
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
    @starred = starred.map {|star| Starred.new(star)}
    @followers = followers.map {|f| Followers.new(f)}
    @following = repos.map {|f| Following.new(f)}
  end

  def self.return_repo_data(token, handle)
    ApiData.new( overview_data(token, handle),
    repos_data(token, handle),
    starred_data(token, handle),
    followers_data(token, handle),
    following_data(token, handle)
    )
  end

  def self.overview_data(token, handle)
    github(token).get_data(handle)
  end

  def self.repos_data(token, handle)
    github(token).get_repos(handle)
  end

  def self.starred_data(token, handle)
    github(token).get_starred(handle)
  end

  def self.followers_data(token, handle)
    github(token).get_followers(handle)
  end

  def self.following_data(token, handle)
    github(token).get_followers(handle)
  end


private

  def self.github(token)
    GitHubService.new(token)
  end


end
