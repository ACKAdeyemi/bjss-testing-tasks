require 'capybara/dsl'

class The_Internet_Dynamic_Loading
  include Capybara::DSL

  # constants
  LOADING_BAR_DIV = '#loading'
  START_BUTTON_TEXT = 'Start'
  HELLO_WORLD_TEXT = 'Hello World!'

  def click_example_two
    all('a').each do |tag|
      if tag.text == 'Example 2: Element rendered after the fact'
        tag.click
        break
      end
    end
  end

  def click_start_button
    click_button(START_BUTTON_TEXT)
  end

  def check_loading_div
    has_content?(LOADING_BAR_DIV)
  end

  def check_hello_world
    counter = 0

    if has_content?(HELLO_WORLD_TEXT) == false && counter < 5
      sleep 2
      counter += 1
    elsif has_content?(HELLO_WORLD_TEXT) == true
      true
    end
  end

end
