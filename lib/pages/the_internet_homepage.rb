require 'capybara/dsl'

class The_Internet_Homepage
  include Capybara::DSL

  # constants
  HOMEPAGE_URL = 'https://the-internet.herokuapp.com'

  def visit_home_page
    visit(HOMEPAGE_URL)
    sleep 2
  end

end
