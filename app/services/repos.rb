def Repos

attr_reader :id, :name

  def initialize(repo_hash)
    @id = repo_hash[:id]
    @name = repo_hash[:name]
  end


end
