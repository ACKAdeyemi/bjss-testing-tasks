require 'capybara/dsl'

class The_Internet_Challenging_DOM
  include Capybara::DSL

  def click_red_button
    find('.alert').click
  end

  def get_button_text
    p find('.alert').text
  end

  def check_button_label_change(arr)
    if arr[-1] != arr[-2]
      true
    else
      false
    end
  end

end
