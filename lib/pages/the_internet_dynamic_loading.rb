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

  def click_start_button
    click_button('Start')
  end

  def check_loading_div
    has_content?('#loading')
  end

  def check_hello_world
    counter = 0

    if has_content?('Hello World!') == false && counter < 5
      sleep 2
      counter += 1
    elsif has_content?('Hello World!') == true
      true
    end
  end

end
