require 'test_helper'

class ContactusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contactu = contactus(:one)
  end

  test "should get index" do
    get contactus_url
    assert_response :success
  end

  test "should get new" do
    get new_contactu_url
    assert_response :success
  end

  test "should create contactu" do
    assert_difference('Contactu.count') do
      post contactus_url, params: { contactu: {  } }
    end

    assert_redirected_to contactu_url(Contactu.last)
  end

  test "should show contactu" do
    get contactu_url(@contactu)
    assert_response :success
  end

  test "should get edit" do
    get edit_contactu_url(@contactu)
    assert_response :success
  end

  test "should update contactu" do
    patch contactu_url(@contactu), params: { contactu: {  } }
    assert_redirected_to contactu_url(@contactu)
  end

  test "should destroy contactu" do
    assert_difference('Contactu.count', -1) do
      delete contactu_url(@contactu)
    end

    assert_redirected_to contactus_url
  end
end
