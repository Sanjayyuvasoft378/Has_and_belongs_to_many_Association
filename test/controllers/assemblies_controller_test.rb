require "test_helper"

class AssembliesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get assemblies_index_url
    assert_response :success
  end

  test "should get show" do
    get assemblies_show_url
    assert_response :success
  end

  test "should get new" do
    get assemblies_new_url
    assert_response :success
  end

  test "should get edit" do
    get assemblies_edit_url
    assert_response :success
  end
end
