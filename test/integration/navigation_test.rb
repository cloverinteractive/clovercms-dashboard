require 'test_helper'

class NavigationTest < ActiveSupport::IntegrationCase

  test "there should be navigation links" do
    visit '/'
    assert page.has_selector? 'ul#nav li.active'
    assert page.has_selector? 'ul#nav li'
    assert page.has_css?      'html body #wrapper #nav_wrap #nav li.active a'
    assert page.has_content?  'Home'
    assert page.has_content?  'Pages'
  end
  
  test "there should be sub navigation links" do
    visit '/'
    assert page.has_selector? 'ul.sub_nav li'
    assert page.has_content?  'List'
    assert page.has_content?  'Edit'
  end
end
