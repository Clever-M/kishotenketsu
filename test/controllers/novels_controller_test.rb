require "test_helper"

class NovelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @novel = novels(:fakeship)
  end

  test "should get index" do
    get novels_url
    assert_response :success
  end

  test "should get new" do
    get new_novel_url
    assert_response :success
  end

  test "should create novel" do
    assert_difference("Novel.count") do
      post novels_url,
      params: {
        novel:
          { author_id: @novel.author_id,
            description: @novel.description,
            genre: @novel.genre,
            title: @novel.title
          }
      }
    end

    assert_redirected_to novel_url(Novel.last)
  end

  test "should show novel" do
    get novel_url(@novel)

    assert_select "ul" do
      assert_select "li", /#{@novel.volumes.first.title}/
    end

    assert_select "a", /Add New Volume/
    assert_response :success
  end

  test "should get edit" do
    get edit_novel_url(@novel)
    assert_response :success
  end

  test "should update novel" do
    patch novel_url(@novel), params: { novel: { author_id: @novel.author_id, description: @novel.description, genre: @novel.genre, title: @novel.title } }
    assert_redirected_to novel_url(@novel)
  end

  test "should destroy novel" do
    assert_difference("Novel.count", -1) do
      delete novel_url(@novel)
    end

    assert_redirected_to novels_url
  end
end
