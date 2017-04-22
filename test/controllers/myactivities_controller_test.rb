require 'test_helper'

class MyactivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myactivity = myactivities(:one)
  end

  test "should get index" do
    get myactivities_url
    assert_response :success
  end

  test "should get new" do
    get new_myactivity_url
    assert_response :success
  end

  test "should create myactivity" do
    assert_difference('Myactivity.count') do
      post myactivities_url, params: { myactivity: {  } }
    end

    assert_redirected_to myactivity_url(Myactivity.last)
  end

  test "should show myactivity" do
    get myactivity_url(@myactivity)
    assert_response :success
  end

  test "should get edit" do
    get edit_myactivity_url(@myactivity)
    assert_response :success
  end

  test "should update myactivity" do
    patch myactivity_url(@myactivity), params: { myactivity: {  } }
    assert_redirected_to myactivity_url(@myactivity)
  end

  test "should destroy myactivity" do
    assert_difference('Myactivity.count', -1) do
      delete myactivity_url(@myactivity)
    end

    assert_redirected_to myactivities_url
  end
end
