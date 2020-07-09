require 'test_helper'

class VodkasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vodka = vodkas(:one)
  end

  test "should get index" do
    get vodkas_url
    assert_response :success
  end

  test "should get new" do
    get new_vodka_url
    assert_response :success
  end

  test "should create vodka" do
    assert_difference('Vodka.count') do
      post vodkas_url, params: { vodka: { memo: @vodka.memo, name: @vodka.name } }
    end

    assert_redirected_to vodka_url(Vodka.last)
  end

  test "should show vodka" do
    get vodka_url(@vodka)
    assert_response :success
  end

  test "should get edit" do
    get edit_vodka_url(@vodka)
    assert_response :success
  end

  test "should update vodka" do
    patch vodka_url(@vodka), params: { vodka: { memo: @vodka.memo, name: @vodka.name } }
    assert_redirected_to vodka_url(@vodka)
  end

  test "should destroy vodka" do
    assert_difference('Vodka.count', -1) do
      delete vodka_url(@vodka)
    end

    assert_redirected_to vodkas_url
  end
end
