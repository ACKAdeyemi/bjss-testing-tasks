require 'spec_helper'

describe "Testing two examples from the-internet app" do

  before(:all) do
    @the_internet_site = The_Internet.new
  end

  context "testing the first example" do

    it "should take me to the Challenging DOM page" do
      @the_internet_site.the_internet_homepage.visit_home_page
      @the_internet_site.the_internet_homepage.click_challenging_dom
      expect(@the_internet_site.helper_methods.check_page_title('Challenging DOM')).to eq true
    end

  end

  context "testing the second example" do

    it "should take me to the Dynamic Loading page" do
      @the_internet_site.the_internet_homepage.visit_home_page
      @the_internet_site.the_internet_homepage.click_dynamic_loading
      expect(@the_internet_site.helper_methods.check_page_title('Dynamically Loaded Page Elements')).to eq true
    end

  end

end
