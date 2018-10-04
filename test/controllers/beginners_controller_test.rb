require 'test_helper'

class BeginnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beginner = beginners(:one)
  end

  test "should get index" do
    get beginners_url
    assert_response :success
  end

  test "should get new" do
    get new_beginner_url
    assert_response :success
  end

  test "should create beginner" do
    assert_difference('Beginner.count') do
      post beginners_url, params: { beginner: { author: @beginner.author, element: @beginner.element, title: @beginner.title } }
    end

    assert_redirected_to beginner_url(Beginner.last)
  end

  test "should show beginner" do
    get beginner_url(@beginner)
    assert_response :success
  end

  test "should get edit" do
    get edit_beginner_url(@beginner)
    assert_response :success
  end

  test "should update beginner" do
    patch beginner_url(@beginner), params: { beginner: { author: @beginner.author, element: @beginner.element, title: @beginner.title } }
    assert_redirected_to beginner_url(@beginner)
  end

  test "should destroy beginner" do
    assert_difference('Beginner.count', -1) do
      delete beginner_url(@beginner)
    end

    assert_redirected_to beginners_url
  end
end
