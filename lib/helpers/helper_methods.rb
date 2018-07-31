require 'capybara/dsl'

class Helper_Methods
  include Capybara::DSL

  def check_page_content(text)
    has_content?(text)
  end

  def wait(num)
    sleep num
  end

end
