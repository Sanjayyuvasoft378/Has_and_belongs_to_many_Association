require "test_helper"

class AssembliesPartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get assemblies_parts_index_url
    assert_response :success
  end

  test "should get show" do
    get assemblies_parts_show_url
    assert_response :success
  end

  test "should get new" do
    get assemblies_parts_new_url
    assert_response :success
  end

  test "should get edit" do
    get assemblies_parts_edit_url
    assert_response :success
  end
end
