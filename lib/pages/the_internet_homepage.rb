require 'capybara/dsl'

class The_Internet_Homepage
  include Capybara::DSL

  # constants
  HOMEPAGE_URL = 'https://the-internet.herokuapp.com'

  def visit_home_page
    visit(HOMEPAGE_URL)
    sleep 1
  end

  def click_challenging_dom
    all('a').each do |tag|
      if tag.text == 'Challenging DOM'
        tag.click
        break
      end
    end
  end

  def click_dynamic_loading
    all('a').each do |tag|
      if tag.text == 'Dynamic Loading'
        tag.click
        break
      end
    end
  end

end
