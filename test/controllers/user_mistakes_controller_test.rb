require "test_helper"

class UserMistakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_mistake = user_mistakes(:one)
  end

  test "should get index" do
    get user_mistakes_url
    assert_response :success
  end

  test "should get new" do
    get new_user_mistake_url
    assert_response :success
  end

  test "should create user_mistake" do
    assert_difference("UserMistake.count") do
      post user_mistakes_url, params: { user_mistake: {  } }
    end

    assert_redirected_to user_mistake_url(UserMistake.last)
  end

  test "should show user_mistake" do
    get user_mistake_url(@user_mistake)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_mistake_url(@user_mistake)
    assert_response :success
  end

  test "should update user_mistake" do
    patch user_mistake_url(@user_mistake), params: { user_mistake: {  } }
    assert_redirected_to user_mistake_url(@user_mistake)
  end

  test "should destroy user_mistake" do
    assert_difference("UserMistake.count", -1) do
      delete user_mistake_url(@user_mistake)
    end

    assert_redirected_to user_mistakes_url
  end
end
