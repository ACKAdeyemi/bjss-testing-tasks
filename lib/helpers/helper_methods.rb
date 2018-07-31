require 'capybara/dsl'

class Helper_Methods
  include Capybara::DSL

  def check_page_title(title)
    has_content?(title)
  end

end
