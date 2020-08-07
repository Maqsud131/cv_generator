require 'test_helper'

class CvControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cv_index_url
    assert_response :success
  end

  test "should get create" do
    get cv_create_url
    assert_response :success
  end

  test "should get edit" do
    get cv_edit_url
    assert_response :success
  end

  test "should get show" do
    get cv_show_url
    assert_response :success
  end

end
