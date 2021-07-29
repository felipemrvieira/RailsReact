require 'test_helper'

class MeasuresImportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get measures_imports_new_url
    assert_response :success
  end

  test "should get create" do
    get measures_imports_create_url
    assert_response :success
  end

end
