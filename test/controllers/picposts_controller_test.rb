require 'test_helper'

class PicpostsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get picposts_new_url
    assert_response :success
  end

  test "should get create" do
    get picposts_create_url
    assert_response :success
  end

end
