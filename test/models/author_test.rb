require "test_helper"

class AuthorTest < ActiveSupport::TestCase
  test "Author's name can't be blank" do
    author = Author.new name: "", nickname: "potato", bio: "I'm a cool author"

    assert_not author.valid?
  end

  test "Author's nickname can't be blank" do
    author = Author.new name: "John Doe", nickname: "", bio: "I'm a cool author"

    assert_not author.valid?
  end

  test "Author's bio can't be longer than 500 characters" do
    author = Author.new name: "John Doe", nickname: "potato", bio: "a" * 501

    assert_not author.valid?
  end
end
