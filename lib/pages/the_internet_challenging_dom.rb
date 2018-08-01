require 'capybara/dsl'

class The_Internet_Challenging_DOM
  include Capybara::DSL

  # constants
  RED_BUTTON_CLASS = '.alert'

  def click_red_button
    find(RED_BUTTON_CLASS).click
  end

  def get_button_text
    # print for reference in terminal
    p find(RED_BUTTON_CLASS).text
  end

  def check_button_label_change(arr)
    # if the last and second to last items do not match then return true - this means that button label changes after each click
    if arr[-1] != arr[-2]
      true
    else
      false
    end
  end

end
