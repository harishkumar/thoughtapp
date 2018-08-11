require 'test_helper'

class FileuploadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fileupload_index_url
    assert_response :success
  end

end
