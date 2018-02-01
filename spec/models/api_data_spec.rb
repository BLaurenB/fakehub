require 'rails_helper'

describe ApiData do
  before do
    repo_data =     {
                    name: "Bob",
                    image: "img link",
                    company: "",
                    location: "Denver",
                    bio: "I'm a Dev!",
                    public_repos: "72",
                    public_gists: "5",
                    followers: "34",
                    following: "50"
                    }

    @api_data = ApiData.new(repo_data)
  end


    it "exists" do
      expect(@api_data).to be_a ApiData
    end

    it "wraps a hash of API data in a class instance" do
      expect(@api_data.name).to eq("Bob")
      expect(@api_data.company).to eq("")
      expect(@api_data.location).to eq("Denver")
      expect(@api_data.bio).to eq("I'm a Dev!")
      expect(@api_data.public_repos).to eq("72")
      expect(@api_data.public_gists).to eq("5")
      expect(@api_data.followers).to eq("34")
      expect(@api_data.following).to eq("50")

    end


    context "class methods" do

        it ".return_repo_data" do
          VCR.use_cassette("user_views_overview_page") do
          user = User.create(uid: "1234567", username: "Joe", token: "token1234")
          token = user.token
          git_hub_user_from_uri = "BLaurenB"

           api_data = ApiData.return_repo_data(token, git_hub_user_from_uri)

           expect(api_data.name).to eq("BLaurenB")
           expect(api_data.company).to eq(nil)
           expect(api_data.location).to eq(nil)
           expect(api_data.public_repos).to eq(28)
           expect(api_data.public_gists).to eq(13)
           expect(api_data.followers).to eq(1)
           expect(api_data.following).to eq(1)

        end

        end

      context ".github" do
      # github(token)
      end

    end


end
