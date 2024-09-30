require "test_helper"

class DocumentaryfilmControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get documentaryfilm_index_url
    assert_response :success
  end

  test "should get new" do
    get documentaryfilm_new_url
    assert_response :success
  end

  test "should get create" do
    get documentaryfilm_create_url
    assert_response :success
  end
end
