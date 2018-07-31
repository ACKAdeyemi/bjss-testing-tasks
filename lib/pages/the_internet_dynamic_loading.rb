require 'capybara/dsl'

class The_Internet_Dynamic_Loading
  include Capybara::DSL

  def click_example_two
    all('a').each do |tag|
      if tag.text == 'Example 2: Element rendered after the fact'
        tag.click
        break
      end
    end
  end

end
