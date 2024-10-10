require "test_helper"

class VolumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @novel = novels(:fakeship)
    @volume = { novel_id: @novel.id, title: "A fake title", description: "A fake description" }
  end
  test "should get new" do
    get new_novel_volume_path(@novel)
    assert_response :success
  end

  test "should create a new volume" do
    assert_difference("Volume.count") do
      post novel_volumes_url(@novel), params: { volume: @volume }
    end
    assert_redirected_to novel_url(@novel)
  end

  test "should get update" do
    get volumes_update_url
    assert_response :success
  end
end
