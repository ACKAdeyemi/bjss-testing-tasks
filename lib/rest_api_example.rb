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
    post_data = "{\"employee_name\"=>\"Testerson\",\"employee_salary\"=>\"£50k\",\"employee_age\"=>\"35\"}"

    post_headers = "{\"Accept-Encoding\"=>\"\",\"Content-Type\"=>\"application\/json\"}"



    data_hash = JSON.parse(post_data.gsub('=>', ':'))
    headers_hash = JSON.parse(post_headers.gsub('=>', ':'))
    p data_hash.class
    p headers_hash.class
    p data_hash

    JSON.parse(self.class.post("/create", body: data_hash).body)
    # JSON.parse(self.class.post("/create",
    #   headers: headers_hash,
    #   body: data_hash.to_json
    # ).body)
  end

  # def post_new_employee
  #   JSON.parse(self.class.post("/create",
  #     headers: {
  #       "Accept" => "application\/json",
  #       "Accept-Encoding" => "",
  #       "Content-Type" => "application\/json"
  #     },
  #     body: {
  #       "employee_name" => "Mr Tester Testerson",
  #       "employee_salary" => "£50k",
  #       "employee_age" => 35
  #     }).body)
  # end

end
