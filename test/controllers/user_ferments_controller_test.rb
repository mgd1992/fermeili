require "test_helper"

class UserFermentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_ferment = user_ferments(:one)
  end

  test "should get index" do
    get user_ferments_url, as: :json
    assert_response :success
  end

  test "should create user_ferment" do
    assert_difference("UserFerment.count") do
      post user_ferments_url, params: { user_ferment: { comments: @user_ferment.comments, fermentation_end: @user_ferment.fermentation_end, fermentation_starts: @user_ferment.fermentation_starts, name: @user_ferment.name } }, as: :json
    end

    assert_response :created
  end

  test "should show user_ferment" do
    get user_ferment_url(@user_ferment), as: :json
    assert_response :success
  end

  test "should update user_ferment" do
    patch user_ferment_url(@user_ferment), params: { user_ferment: { comments: @user_ferment.comments, fermentation_end: @user_ferment.fermentation_end, fermentation_starts: @user_ferment.fermentation_starts, name: @user_ferment.name } }, as: :json
    assert_response :success
  end

  test "should destroy user_ferment" do
    assert_difference("UserFerment.count", -1) do
      delete user_ferment_url(@user_ferment), as: :json
    end

    assert_response :no_content
  end
end
