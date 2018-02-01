require 'rails_helper'

describe ApiData do
  repo_data ={
              name: "Bob",
              image: "img link",
              company: "",
              location: "Denver",
              bio: "I'm a Dev!",
              public_repos: "72",
              public_gists: "5",
              followers: "34",
              following: "50"}

  let (:api_data) {ApiData.new(repo_data)}


    it "exists" do
      expect(api_data).to be_a ApiData
    end

    it "wraps a hash of API data in a class instance" do
      expect(api_data.name).to eq("Bob")
      expect(api_data.company).to eq("")
      expect(api_data.location).to eq("Denver")
      expect(api_data.bio).to eq("I'm a Dev!")
      expect(api_data.public_repos).to eq("72")
      expect(api_data.public_gists).to eq("5")
      expect(api_data.followers).to eq("34")
      expect(api_data.following).to eq("50")

    end
        # User.new(uid: "1234567", username: "Joe", token: "token1234")
        # stub_omniauth

        # member = User.first
        # expect(member).to be_a User
        # expect(member.uid).to eq("1234567")
        # expect(member.username).to eq("Joe")
        # expect(member.token).to eq("token1234")


end
