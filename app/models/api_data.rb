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


  def self.return_repo_data(git_hub_user_from_uri = current_user.username)
    GitHubService.new.make_api_call(git_hub_user_from_uri).map do |repo|
      ApiData.new(repo)
  end




end
