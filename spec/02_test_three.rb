require 'spec_helper'

describe 'Dummy Rest API Example Test - Test Task 3' do

  context 'POST to the create route and verify you receive a response that indicates that a user was made' do

    before(:all) do
      @rest_api = RestAPI.new
      @response = @rest_api.get_single_employee('15155')
    end

    it "should respond with json related to a specified user id" do
      p @response
    end

  end

end
