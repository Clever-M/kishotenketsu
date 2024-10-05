require "test_helper"

class VolumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @novel = novels(:fakeship)
  end
  test "should get new" do
    get new_novel_volume_path(@novel)
    assert_response :success
  end

  test "should get create" do
    get volumes_create_url
    assert_response :success
  end

  test "should get update" do
    get volumes_update_url
    assert_response :success
  end
end
