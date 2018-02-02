class Followers
  attr_reader :image, :username



  def initialize(followers_hash)
    @image = followers_hash[:avatar_url]
    @username = followers_hash[:login]
  end


end




=begin


        "login": "dionew1",
        "id": 22304676,
        "avatar_url": "https://avatars1.githubusercontent.com/u/22304676?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/dionew1",
        "html_url": "https://github.com/dionew1",
        "followers_url": "https://api.github.com/users/dionew1/followers",
        "following_url": "https://api.github.com/users/dionew1/following{/other_user}",
        "gists_url": "https://api.github.com/users/dionew1/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/dionew1/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/dionew1/subscriptions",
        "organizations_url": "https://api.github.com/users/dionew1/orgs",
        "repos_url": "https://api.github.com/users/dionew1/repos",
        "events_url": "https://api.github.com/users/dionew1/events{/privacy}",
        "received_events_url": "https://api.github.com/users/dionew1/received_events",
        "type": "User",
        "site_admin": false


=end
