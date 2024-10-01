require "test_helper"

class ChaptersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chapter = chapters(:one)
  end

  test "should get index" do
    get novel_url(@chapter.novel)
    assert_response :success
  end

  test "should get new" do
    get new_novel_chapter_url(@chapter.novel)
    assert_response :success
  end

  test "should create chapter" do
    assert_difference("Chapter.count") do
      post novel_chapters_url(@chapter.novel), params: { chapter: { body: "Lorem Ipsum", title: "A test title", novel_id: @chapter.novel.id } }
    end

    assert_redirected_to novel_url(@chapter.novel)
  end

  test "should show chapter" do
    get novel_chapter_url(@chapter.novel, @chapter)
    assert_response :success
  end

  test "should get edit" do
    get edit_novel_chapter_url(@chapter.novel.id, @chapter.id)
    assert_response :success
  end

  # test "should update chapter" do
  #   patch novel_chapter_url(@chapter), params: { chapter: { body: @chapter.body, novel_id: @chapter.novel_id, number: @chapter.number, title: @chapter.title } }
  #   assert_redirected_to chapter_url(@chapter)
  # end

  # test "should destroy chapter" do
  #   assert_difference("Chapter.count", -1) do
  #     delete chapter_url(@chapter)
  #   end

  #   assert_redirected_to chapters_url
  # end
end
