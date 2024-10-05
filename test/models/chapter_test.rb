require "test_helper"

class ChapterTest < ActiveSupport::TestCase
  setup do
    @novel = novels(:fakeship)
  end
  test "Chapter's title can't be blank" do
    chapter = Chapter.new volume: @novel.volumes.last,
                          title: "", body: "do the harlem shake!"

    assert_not chapter.valid?
  end

  test "Chapter's body can't be blank" do
    chapter = Chapter.new volume: @novel.volumes.last,
                          title: "First act", body: ""

    assert_not chapter.valid?
  end
end
