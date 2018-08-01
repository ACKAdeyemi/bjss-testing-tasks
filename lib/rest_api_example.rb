require 'httparty'
require 'json'

class RestAPI
  include HTTParty

  base_uri 'http://dummy.restapiexample.com/api'

  def get_single_employee(num)
    JSON.parse(self.class.get("/v1/employee/#{num}").body)
  end

end
