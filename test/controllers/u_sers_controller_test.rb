require 'test_helper'

class USersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @u_ser = u_sers(:one)
  end

  test "should get index" do
    get u_sers_url
    assert_response :success
  end

  test "should get new" do
    get new_u_ser_url
    assert_response :success
  end

  test "should create u_ser" do
    assert_difference('USer.count') do
      post u_sers_url, params: { u_ser: { email: @u_ser.email, name: @u_ser.name } }
    end

    assert_redirected_to u_ser_url(USer.last)
  end

  test "should show u_ser" do
    get u_ser_url(@u_ser)
    assert_response :success
  end

  test "should get edit" do
    get edit_u_ser_url(@u_ser)
    assert_response :success
  end

  test "should update u_ser" do
    patch u_ser_url(@u_ser), params: { u_ser: { email: @u_ser.email, name: @u_ser.name } }
    assert_redirected_to u_ser_url(@u_ser)
  end

  test "should destroy u_ser" do
    assert_difference('USer.count', -1) do
      delete u_ser_url(@u_ser)
    end

    assert_redirected_to u_sers_url
  end
end
