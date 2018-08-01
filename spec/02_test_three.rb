require 'spec_helper'

describe 'Dummy Rest API Example Test - Test Task 3' do

  context 'POST to the create route and verify you receive a response that indicates that a user was made' do

    before(:each) do
      @rest_api = RestAPI.new
      @partial_response = @rest_api.get_single_employee('15735')
    end

    it "should respond with json related to a specified user id" do
      p @partial_response
      expect(@partial_response['employee_name']).to eq 'Jon Snow'
    end

    it "should send back a single employee's details as a hash" do
      expect(@partial_response).to be_kind_of Hash
    end

    it "should send back all employee details in an array" do
      # p @rest_api.get_all_employees
      expect(@rest_api.get_all_employees).to be_kind_of Array
    end

    it "should POST to the api and confirm that the new user has been made" do
      @rest_api.post_new_employee
      p @rest_api.get_all_employees.last

      expect(@rest_api.get_all_employees.last['employee_name']).to be_kind_of String
      expect(@rest_api.get_all_employees.last['employee_name']).to eq 'Employee 4'

      expect(@rest_api.get_all_employees.last['employee_salary']).to be_kind_of String
      expect(@rest_api.get_all_employees.last['employee_salary']).to eq '50000'

      expect(@rest_api.get_all_employees.last['employee_age']).to be_kind_of String
      expect(@rest_api.get_all_employees.last['employee_age']).to eq "35"
    end

  end

end
