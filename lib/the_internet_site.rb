require 'capybara/dsl'

require_relative './pages/the_internet_homepage.rb'

class The_Internet

  def the_internet_homepage
    The_Internet_Homepage.new
  end

end
