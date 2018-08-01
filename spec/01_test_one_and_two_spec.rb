require 'spec_helper'

describe "Testing two examples from the-internet web app - Test Tasks 1 and 2" do

  before(:all) do
    @the_internet_site = The_Internet.new
  end

  context "testing the first example" do

    it "should take me to the Challenging DOM page" do
      @the_internet_site.the_internet_homepage.visit_home_page
      @the_internet_site.the_internet_homepage.click_challenging_dom
      expect(@the_internet_site.helper_methods.check_page_content('Challenging DOM')).to eq true
      @the_internet_site.helper_methods.wait(1)
    end

    it "should confirm that the red button label changes when clicked" do
      # I performed 4 iterations
      arr = []

      # store current button text in a varibale
      button_text = @the_internet_site.the_internet_challenging_dom.get_button_text
      # add current button text to array for comparison
      arr.push button_text
      @the_internet_site.the_internet_challenging_dom.click_red_button
      @the_internet_site.helper_methods.wait(2)

      # overwrite previous button text with current
      button_text = @the_internet_site.the_internet_challenging_dom.get_button_text
      # add current button text to array for comparison
      arr.push button_text
      # now compare current and previous button text array items, if the text is different then the method will return true
      expect(@the_internet_site.the_internet_challenging_dom.check_button_label_change(arr)).to eq true
      @the_internet_site.the_internet_challenging_dom.click_red_button
      @the_internet_site.helper_methods.wait(2)

      button_text = @the_internet_site.the_internet_challenging_dom.get_button_text
      arr.push button_text
      expect(@the_internet_site.the_internet_challenging_dom.check_button_label_change(arr)).to eq true
      @the_internet_site.the_internet_challenging_dom.click_red_button
      @the_internet_site.helper_methods.wait(2)

      button_text = @the_internet_site.the_internet_challenging_dom.get_button_text
      arr.push button_text
      expect(@the_internet_site.the_internet_challenging_dom.check_button_label_change(arr)).to eq true
      @the_internet_site.the_internet_challenging_dom.click_red_button
      @the_internet_site.helper_methods.wait(3)

      p arr # print for reference in terminal
    end

  end

  context "testing the second example" do

    it "should take me to the Dynamic Loading page and then the Example 2 page" do
      @the_internet_site.the_internet_homepage.visit_home_page
      @the_internet_site.the_internet_homepage.click_dynamic_loading
      expect(@the_internet_site.helper_methods.check_page_content('Dynamically Loaded Page Elements')).to eq true
      @the_internet_site.the_internet_dynamic_loading.click_example_two
      expect(@the_internet_site.helper_methods.check_page_content('Example 2: Element rendered after the fact')).to eq true
      @the_internet_site.helper_methods.wait(1)
    end

    it "should confirm 'Hello World!' is rendered after the loading bar disappears" do
      @the_internet_site.the_internet_dynamic_loading.click_start_button
      expect(@the_internet_site.the_internet_dynamic_loading.check_hello_world).to eq true
      expect(@the_internet_site.the_internet_dynamic_loading.check_loading_div).to eq false
      @the_internet_site.helper_methods.wait(2)
    end

  end

end
