require 'test_helper'

class NalogasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @naloga = nalogas(:one)
  end

  test "should get index" do
    get nalogas_url
    assert_response :success
  end

  test "should get new" do
    get new_naloga_url
    assert_response :success
  end

  test "should create naloga" do
    assert_difference('Naloga.count') do
      post nalogas_url, params: { naloga: { start_time: @naloga.start_time } }
    end

    assert_redirected_to naloga_url(Naloga.last)
  end

  test "should show naloga" do
    get naloga_url(@naloga)
    assert_response :success
  end

  test "should get edit" do
    get edit_naloga_url(@naloga)
    assert_response :success
  end

  test "should update naloga" do
    patch naloga_url(@naloga), params: { naloga: { start_time: @naloga.start_time } }
    assert_redirected_to naloga_url(@naloga)
  end

  test "should destroy naloga" do
    assert_difference('Naloga.count', -1) do
      delete naloga_url(@naloga)
    end

    assert_redirected_to nalogas_url
  end
end
