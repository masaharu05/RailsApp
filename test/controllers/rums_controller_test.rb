require 'test_helper'

class RumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rum = rums(:one)
  end

  test "should get index" do
    get rums_url
    assert_response :success
  end

  test "should get new" do
    get new_rum_url
    assert_response :success
  end

  test "should create rum" do
    assert_difference('Rum.count') do
      post rums_url, params: { rum: { memo: @rum.memo, name: @rum.name } }
    end

    assert_redirected_to rum_url(Rum.last)
  end

  test "should show rum" do
    get rum_url(@rum)
    assert_response :success
  end

  test "should get edit" do
    get edit_rum_url(@rum)
    assert_response :success
  end

  test "should update rum" do
    patch rum_url(@rum), params: { rum: { memo: @rum.memo, name: @rum.name } }
    assert_redirected_to rum_url(@rum)
  end

  test "should destroy rum" do
    assert_difference('Rum.count', -1) do
      delete rum_url(@rum)
    end

    assert_redirected_to rums_url
  end
end
