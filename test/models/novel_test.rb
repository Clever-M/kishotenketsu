require "test_helper"

class NovelTest < ActiveSupport::TestCase
  setup do
    @author = authors(:one)
  end
  test "Novel's title can't be blank" do
    novel = Novel.new author: @author, title: "", description: "About a girl in a box",
                      genre: "horror"
    assert_not novel.valid?
  end

  test "Novel's description can't be longer than 1000 characters" do
    novel = Novel.new author: @author, title: "", description: "a" * 1001,
                      genre: "horror"
    assert_not novel.valid?
  end
end
