require 'capybara'
require 'httparty'
require 'json'
require 'rspec'
require 'selenium-webdriver'

require_relative '../lib/the_internet_site.rb'
require_relative '../lib/rest_api_example.rb'

RSpec.configure do |config|
  config.formatter = :documentation
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :selenium_chrome)
end

Capybara.configure do |config|
  config.default_max_wait_time = 10 #Wait time for asynchronous processes to finish
  config.match = :prefer_exact # this setting is to ensure Capybara has specific matching rather than fuzzy logic
  config.default_driver = :selenium_chrome #ensure the default driver is chrome
end
