class Repos

  attr_reader :id,
              :name, 
              :description,
              :stargazers_count,
              :watchers_count,
              :language,
              :has_issues,
              :forks_count,
              :archived

  def initialize(repo_hash)
    @id = repo_hash[:id]
    @name = repo_hash[:name]
    @description = repo_hash[:description]
    @stargazers_count = repo_hash[:stargazers_count]
    @watchers_count = repo_hash[:watchers_count]
    @language = repo_hash[:language]
    @has_issues = repo_hash[:has_issues]
    @forks_count = repo_hash[:forks_count]
    @archived = repo_hash[:archived]
  end


end
