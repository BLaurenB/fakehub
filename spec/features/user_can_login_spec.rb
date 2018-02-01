require 'rails_helper'

feature "Unauthenticated user can login with Github" do
  before do
    stub_omniauth
  end

  scenario  "using a valid GitHub account" do
    VCR.use_cassette("user_views_overview_page") do
      visit '/'
      click_on "Login with Github!"
      expect(current_path).to eq("/#{User.last.username}")
    end
  end

    it "they can see their overview page" do
      VCR.use_cassette("user_views_overview_page") do

        visit '/'
        click_on "Login with Github!"
        expect(page).to_not have_content("Login with Github!")
        expect(page).to have_content("BLaurenB")
        expect(page).to have_content("Repositories:28")   #this can be brittle when the info changes.
        expect(page).to have_content("Following:1")

      end
    end

end

=begin
Instead of using VCR for situations where the expected data changes and you have hard coded strings

stub_request using webmock -- give it a json file to pull from
DO THIS FOR ALL EXCEPT FOR TESTING THE SERVICE ITSELF




f = File.open("./spec/fixtures/vcr_cassettes/user_views_overview_page.yml", "r") # assume this file for the next couple of snippets
f.read # => "something\nline 2\na third\nfour!\n5555\nsixy\nsevenly\neight"
json_string = f.read.split(/\n/).map  {|element| element if element.include?("      string:")}
  #returns an array of 81 elements, contains TWO INSTANCES of "     string:" and lots of nil values
json_string.compact.last
  #returns the bulk of the json data scrape, BUT because of \n characters in my bio, they were discarded and I don't have the full data to test against. I'll need to find a different way to condense and split the file info.

  maybe I need to read it in as a string, and try to delete everything before the second occurrance of string



  this is from a gh rakefile: def sensitive_strings: https://gist.github.com/tombh/b45e86788620435adc5a
  def sensitive_strings
    contents = File.read "#{Rails.root}/.env"
    words = contents.split(/\s+/)
    # Only interested in words with an '=' in them
    words.reject! { |w| !w.include? '=' }
    # Create a list of key/value pairs
    words.map! { |w| w.split('=') }
    # Turn the key/value pairs into an actual hash
    Hash[words]
  end




    example file from reddit VCR
    ---
    http_interactions:
    - request:
        method: get
        uri: https://www.reddit.com/r/news.json?limit=1
        body:
          encoding: US-ASCII
          string: ''
        headers:
          # some request headers ..
      response:
        status:
          code: 200
          message: OK
        headers:
          # REAL response headers here, such as 'Content-Type', etc.
        body:
          encoding: ASCII-8BIT
          string: '{"kind": "Listing", "data": {"modhash": "", "children": [{"kind": "t3",
            "data": {"contest_mode": false, "banned_by": null, "media_embed": {}, "subreddit":
            "news", "selftext_html": null, "selftext": "", "likes": null, "suggested_sort":
            null, "user_reports": [], "secure_media": null, "link_flair_text": null, "id":
            "5y49mq", "gilded": 0, "secure_media_embed": {}, "clicked": false, "score":
            11356, "report_reasons": null, "author": "easymz", "saved": false, "mod_reports":
            [], "name": "t3_5y49mq", "subreddit_name_prefixed": "r/news", "approved_by":
            null, "over_18": false, "domain": "wtae.com", "hidden": false, "thumbnail":
            "", "subreddit_id": "t5_2qh3l", "edited": false, "link_flair_css_class": null,
            "author_flair_css_class": null, "downs": 0, "brand_safe": true, "archived":
            false, "removal_reason": null, "is_self": false, "hide_score": false, "spoiler":
            false, "permalink": "/r/news/comments/5y49mq/pennsylvania_auditor_general_says_legal_marijuana/",
            "num_reports": null, "locked": false, "stickied": false, "created": 1488957785.0,
            "url": "http://www.wtae.com/article/pennsylvania-auditor-general-says-legal-marijuana-would-reap-taxes/9097859",
            "author_flair_text": null, "quarantine": false, "title": "Pennsylvania auditor
            general says legal marijuana would reap taxes", "created_utc": 1488928985.0,
            "distinguished": null, "media": null, "num_comments": 796, "visited": false,
            "subreddit_type": "public", "ups": 11356}}], "after": "t3_5y49mq", "before":
            null}}'
        http_version:
      recorded_at: Wed, 08 Mar 2017 10:05:07 GMT
    recorded_with: VCR 3.0.3




=end
