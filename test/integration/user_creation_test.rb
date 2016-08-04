require 'test_helper'

class UserCreationTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "a user can be created" do
    assert true

    visit new_user_path
    fill_in "username", with: "yoseph"
    fill_in "password", with: "password"

    assert page.has_content?("Welcome yoseph")
  end
end
