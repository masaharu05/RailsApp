require 'test_helper'

class TequilasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tequila = tequilas(:one)
  end

  test "should get index" do
    get tequilas_url
    assert_response :success
  end

  test "should get new" do
    get new_tequila_url
    assert_response :success
  end

  test "should create tequila" do
    assert_difference('Tequila.count') do
      post tequilas_url, params: { tequila: { memo: @tequila.memo, name: @tequila.name } }
    end

    assert_redirected_to tequila_url(Tequila.last)
  end

  test "should show tequila" do
    get tequila_url(@tequila)
    assert_response :success
  end

  test "should get edit" do
    get edit_tequila_url(@tequila)
    assert_response :success
  end

  test "should update tequila" do
    patch tequila_url(@tequila), params: { tequila: { memo: @tequila.memo, name: @tequila.name } }
    assert_redirected_to tequila_url(@tequila)
  end

  test "should destroy tequila" do
    assert_difference('Tequila.count', -1) do
      delete tequila_url(@tequila)
    end

    assert_redirected_to tequilas_url
  end
end
