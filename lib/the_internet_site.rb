require 'capybara/dsl'

require_relative './pages/the_internet_homepage.rb'
require_relative './pages/the_internet_challenging_dom.rb'
require_relative './pages/the_internet_dynamic_loading.rb'
require_relative './helpers/helper_methods.rb'

class The_Internet

  def the_internet_homepage
    The_Internet_Homepage.new
  end

  def the_internet_challenging_dom
    The_Internet_Challenging_DOM.new
  end

  def the_internet_dynamic_loading
    The_Internet_Dynamic_Loading.new
  end

  def helper_methods
    Helper_Methods.new
  end

end
