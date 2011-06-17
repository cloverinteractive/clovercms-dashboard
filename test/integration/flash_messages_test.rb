require 'test_helper'

class FlashMessagesTest < ActiveSupport::IntegrationCase

  test 'should display flash messages' do
    visit '/'
    assert page.has_selector? '#flash .success'
    assert page.has_selector? '#flash .warning'
    assert page.has_selector? '#flash .error'
    assert page.has_selector? '.module_body .info'
  end
end