require 'spec_helper'

describe "Testing two examples from the-internet app" do

  context "testing the first example" do

    before(:all) do
      @the_internet_site = The_Internet.new
    end

    it "should take me to the homepage" do
      @the_internet_site.the_internet_homepage.visit_home_page
    end

  end

end
