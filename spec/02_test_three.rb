require 'spec_helper'

describe 'Dummy Rest API Example Test - Test Task 3' do

  context 'POST to the create route and verify you receive a response that indicates that a user was made' do

    before(:all) do
      @rest_api = RestAPI.new
      @partial_response = @rest_api.get_single_employee('15155')
      @whole_response = @rest_api.get_all_employees
    end

    it "should respond with json related to a specified user id" do
      p @partial_response
      expect(@partial_response['employee_name']).to eq 'Tester'
    end

    it "should send back a single employee's details as a hash" do
      expect(@partial_response).to be_kind_of Hash
    end

    it "should send back all employee details in an array" do
      # p @whole_response
      expect(@whole_response).to be_kind_of Array
    end

    it "should POST to the api and confirm that the new user has been made" do
      @rest_api.post_new_employee
      p @whole_response.last

      expect(@whole_response.last['employee_name']).to be_kind_of String
      expect(@whole_response.last['employee_name']).to eq 'Mr Tester Testerson'

      expect(@whole_response.last['employee_salary']).to be_kind_of String
      expect(@whole_response.last['employee_salary']).to eq '£50k'

      expect(@whole_response.last['employee_age']).to be_kind_of Integer
      expect(@whole_response.last['employee_age']).to eq 35
    end

  end

end
