require 'test_helper'

class CompprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comppra = comppras(:one)
  end

  test "should get index" do
    get comppras_url
    assert_response :success
  end

  test "should get new" do
    get new_comppra_url
    assert_response :success
  end

  test "should create comppra" do
    assert_difference('Comppra.count') do
      post comppras_url, params: { comppra: { cliente: @comppra.cliente, fecha_compra: @comppra.fecha_compra, monto: @comppra.monto } }
    end

    assert_redirected_to comppra_url(Comppra.last)
  end

  test "should show comppra" do
    get comppra_url(@comppra)
    assert_response :success
  end

  test "should get edit" do
    get edit_comppra_url(@comppra)
    assert_response :success
  end

  test "should update comppra" do
    patch comppra_url(@comppra), params: { comppra: { cliente: @comppra.cliente, fecha_compra: @comppra.fecha_compra, monto: @comppra.monto } }
    assert_redirected_to comppra_url(@comppra)
  end

  test "should destroy comppra" do
    assert_difference('Comppra.count', -1) do
      delete comppra_url(@comppra)
    end

    assert_redirected_to comppras_url
  end
end
