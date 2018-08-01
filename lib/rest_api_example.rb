require 'httparty'
require 'json'

class RestAPI
  include HTTParty

  base_uri 'http://dummy.restapiexample.com/api/v1'

  def get_single_employee(num)
    JSON.parse(self.class.get("/employee/#{num}").body)
  end

  def get_all_employees
    JSON.parse(self.class.get("/employees").body)
  end

  def post_new_employee
    JSON.parse(self.class.post("/create",
      :headers => {
        "Content-Type" => "application/json"
      },
      :body => {
        :name => "Employee 4",
        :salary => 50000,
        :age => 35
      }.to_json).body)
  end

end
