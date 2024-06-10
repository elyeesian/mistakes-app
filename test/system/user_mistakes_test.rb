require "application_system_test_case"

class UserMistakesTest < ApplicationSystemTestCase
  setup do
    @user_mistake = user_mistakes(:one)
  end

  test "visiting the index" do
    visit user_mistakes_url
    assert_selector "h1", text: "User mistakes"
  end

  test "should create user mistake" do
    visit user_mistakes_url
    click_on "New user mistake"

    click_on "Create User mistake"

    assert_text "User mistake was successfully created"
    click_on "Back"
  end

  test "should update User mistake" do
    visit user_mistake_url(@user_mistake)
    click_on "Edit this user mistake", match: :first

    click_on "Update User mistake"

    assert_text "User mistake was successfully updated"
    click_on "Back"
  end

  test "should destroy User mistake" do
    visit user_mistake_url(@user_mistake)
    click_on "Destroy this user mistake", match: :first

    assert_text "User mistake was successfully destroyed"
  end
end
