class Starred

  attr_reader :full_name,
              :git_url,
              :description,
              :language,
              :stargazers_count,
              :network,
              :forks_count


  def initialize(starred_data)
    @full_name = starred_data[:full_name]
    @git_url = starred_data[:git_url]
    @description = starred_data[:description]
    @language = starred_data[:language]
    @stargazers_count = starred_data[:stargazers_count]
    @network = starred_data[:network]
    @forks_count = starred_data[:forks_count]
  end

end


=begin
        "id": 71056775,
        "name": "kitty",
        "full_name": "kovidgoyal/kitty",
        # "owner": {
        #     "login": "kovidgoyal",
        #     "id": 1308621,
        #     "avatar_url": "https://avatars0.githubusercontent.com/u/1308621?v=4",
        #     "gravatar_id": "",
        #     "url": "https://api.github.com/users/kovidgoyal",
        #     "html_url": "https://github.com/kovidgoyal",
        #     "followers_url": "https://api.github.com/users/kovidgoyal/followers",
        #     "following_url": "https://api.github.com/users/kovidgoyal/following{/other_user}",
        #     "gists_url": "https://api.github.com/users/kovidgoyal/gists{/gist_id}",
        #     "starred_url": "https://api.github.com/users/kovidgoyal/starred{/owner}{/repo}",
        #     "subscriptions_url": "https://api.github.com/users/kovidgoyal/subscriptions",
        #     "organizations_url": "https://api.github.com/users/kovidgoyal/orgs",
        #     "repos_url": "https://api.github.com/users/kovidgoyal/repos",
        #     "events_url": "https://api.github.com/users/kovidgoyal/events{/privacy}",
        #     "received_events_url": "https://api.github.com/users/kovidgoyal/received_events",
        #     "type": "User",
        #     "site_admin": false
        # },
        "private": false,
        "html_url": "https://github.com/kovidgoyal/kitty",
        "description": "A cross-platform, fast, feature full, GPU based terminal emulator",
        "fork": false,
        "url": "https://api.github.com/repos/kovidgoyal/kitty",
        "forks_url": "https://api.github.com/repos/kovidgoyal/kitty/forks",
        "keys_url": "https://api.github.com/repos/kovidgoyal/kitty/keys{/key_id}",
        "collaborators_url": "https://api.github.com/repos/kovidgoyal/kitty/collaborators{/collaborator}",
        "teams_url": "https://api.github.com/repos/kovidgoyal/kitty/teams",
        "hooks_url": "https://api.github.com/repos/kovidgoyal/kitty/hooks",
        "issue_events_url": "https://api.github.com/repos/kovidgoyal/kitty/issues/events{/number}",
        "events_url": "https://api.github.com/repos/kovidgoyal/kitty/events",
        "assignees_url": "https://api.github.com/repos/kovidgoyal/kitty/assignees{/user}",
        "branches_url": "https://api.github.com/repos/kovidgoyal/kitty/branches{/branch}",
        "tags_url": "https://api.github.com/repos/kovidgoyal/kitty/tags",
        "blobs_url": "https://api.github.com/repos/kovidgoyal/kitty/git/blobs{/sha}",
        "git_tags_url": "https://api.github.com/repos/kovidgoyal/kitty/git/tags{/sha}",
        "git_refs_url": "https://api.github.com/repos/kovidgoyal/kitty/git/refs{/sha}",
        "trees_url": "https://api.github.com/repos/kovidgoyal/kitty/git/trees{/sha}",
        "statuses_url": "https://api.github.com/repos/kovidgoyal/kitty/statuses/{sha}",
        "languages_url": "https://api.github.com/repos/kovidgoyal/kitty/languages",
        "stargazers_url": "https://api.github.com/repos/kovidgoyal/kitty/stargazers",
        "contributors_url": "https://api.github.com/repos/kovidgoyal/kitty/contributors",
        "subscribers_url": "https://api.github.com/repos/kovidgoyal/kitty/subscribers",
        "subscription_url": "https://api.github.com/repos/kovidgoyal/kitty/subscription",
        "commits_url": "https://api.github.com/repos/kovidgoyal/kitty/commits{/sha}",
        "git_commits_url": "https://api.github.com/repos/kovidgoyal/kitty/git/commits{/sha}",
        "comments_url": "https://api.github.com/repos/kovidgoyal/kitty/comments{/number}",
        "issue_comment_url": "https://api.github.com/repos/kovidgoyal/kitty/issues/comments{/number}",
        "contents_url": "https://api.github.com/repos/kovidgoyal/kitty/contents/{+path}",
        "compare_url": "https://api.github.com/repos/kovidgoyal/kitty/compare/{base}...{head}",
        "merges_url": "https://api.github.com/repos/kovidgoyal/kitty/merges",
        "archive_url": "https://api.github.com/repos/kovidgoyal/kitty/{archive_format}{/ref}",
        "downloads_url": "https://api.github.com/repos/kovidgoyal/kitty/downloads",
        "issues_url": "https://api.github.com/repos/kovidgoyal/kitty/issues{/number}",
        "pulls_url": "https://api.github.com/repos/kovidgoyal/kitty/pulls{/number}",
        "milestones_url": "https://api.github.com/repos/kovidgoyal/kitty/milestones{/number}",
        "notifications_url": "https://api.github.com/repos/kovidgoyal/kitty/notifications{?since,all,participating}",
        "labels_url": "https://api.github.com/repos/kovidgoyal/kitty/labels{/name}",
        "releases_url": "https://api.github.com/repos/kovidgoyal/kitty/releases{/id}",
        "deployments_url": "https://api.github.com/repos/kovidgoyal/kitty/deployments",
        "created_at": "2016-10-16T14:48:28Z",
        "updated_at": "2018-02-02T04:10:03Z",
        "pushed_at": "2018-02-01T07:33:33Z",
        "git_url": "git://github.com/kovidgoyal/kitty.git",
        "ssh_url": "git@github.com:kovidgoyal/kitty.git",
        "clone_url": "https://github.com/kovidgoyal/kitty.git",
        "svn_url": "https://github.com/kovidgoyal/kitty",
        "homepage": "",
        "size": 6074,
        "stargazers_count": 1904,
        "watchers_count": 1904,
        "language": "C",
        "has_issues": true,
        "has_projects": true,
        "has_downloads": true,
        "has_wiki": true,
        "has_pages": false,
        "forks_count": 79,
        "mirror_url": null,
        "archived": false,
        "open_issues_count": 8,
        "license": {
            "key": "gpl-3.0",
            "name": "GNU General Public License v3.0",
            "spdx_id": "GPL-3.0",
            "url": "https://api.github.com/licenses/gpl-3.0"
        },
        "forks": 79,
        "open_issues": 8,
        "watchers": 1904,
        "default_branch": "master"
    }
=end
