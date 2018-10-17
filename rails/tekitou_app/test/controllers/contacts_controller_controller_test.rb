require 'test_helper'

class ContactsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get contacts_controller_show_url
    assert_response :success
  end

end
