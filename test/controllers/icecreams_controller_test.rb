require 'test_helper'

class IcecreamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get icecreams_index_url
    assert_response :success
  end

  test "should get create" do
    get icecreams_create_url
    assert_response :success
  end

  test "should get new" do
    get icecreams_new_url
    assert_response :success
  end

  test "should get destroy" do
    get icecreams_destroy_url
    assert_response :success
  end

  test "should get update" do
    get icecreams_update_url
    assert_response :success
  end

  test "should get edit" do
    get icecreams_edit_url
    assert_response :success
  end

  test "should get show" do
    get icecreams_show_url
    assert_response :success
  end

end
