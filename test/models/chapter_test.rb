require "test_helper"

class ChapterTest < ActiveSupport::TestCase
  setup do
    @novel = novels(:one)
  end
  test "Chapter's title can't be blank" do
    chapter = Chapter.new novel: @novel, number: 1,
                          title: "",     body: "do the harlem shake!"

    assert_not chapter.valid?
  end

  test "Chapter's body can't be blank" do
    chapter = Chapter.new novel: @novel,      number: 1,
                          title: "First act", body: ""

    assert_not chapter.valid?
  end
end
