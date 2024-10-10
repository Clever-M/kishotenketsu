require "test_helper"

class VolumeTest < ActiveSupport::TestCase
  setup do
    @novel = novels(:fakeship)
  end
  test "Novel's title can't be blank" do
    novel = Volume.new novel: @novel, title: "", description: "Heloise get into the game"

    assert_not novel.valid?
  end

  test "Novel's description can't be longer than 1000 characters" do
    novel = Volume.new novel: @novel, title: "Red flag operation", description: "a" * 1001

    assert_not novel.valid?
  end
end
