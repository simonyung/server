require 'test_helper'

class AboutusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aboutu = aboutus(:one)
  end

  test "should get index" do
    get aboutus_url
    assert_response :success
  end

  test "should get new" do
    get new_aboutu_url
    assert_response :success
  end

  test "should create aboutu" do
    assert_difference('Aboutu.count') do
      post aboutus_url, params: { aboutu: {  } }
    end

    assert_redirected_to aboutu_url(Aboutu.last)
  end

  test "should show aboutu" do
    get aboutu_url(@aboutu)
    assert_response :success
  end

  test "should get edit" do
    get edit_aboutu_url(@aboutu)
    assert_response :success
  end

  test "should update aboutu" do
    patch aboutu_url(@aboutu), params: { aboutu: {  } }
    assert_redirected_to aboutu_url(@aboutu)
  end

  test "should destroy aboutu" do
    assert_difference('Aboutu.count', -1) do
      delete aboutu_url(@aboutu)
    end

    assert_redirected_to aboutus_url
  end
end
