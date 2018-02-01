# spec/model/your_model_spec.rb
# https://www.natashatherobot.com/vcr-gem-rails-rspec/

# When you run this test for the first time, check your spec/vcr directory. You will see a new directory called ‘model’, and in it will be the api_response.yml file, which will include the response from the api that you just called. Now, every time the test runs, that cassette will be used instead of making the actual api call.

# describe YourModel do
#   describe '#call_api' do
#      it "gets a response from an api" do
#        VCR.use_cassette 'model/api_response' do
#           response = call_api(api_url)
#           response.first.should == "hello world"
#        end
#      end
#   end
# end



# DON'T USE WEBMOCK OR VCR FOR THESE -- SHOULD BE A REAL API CALL!!! - check the docks!
#
# check for structure, check that it has keys, that the data is a certain datatype
