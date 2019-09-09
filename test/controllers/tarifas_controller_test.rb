require 'test_helper'

class TarifasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tarifa = tarifas(:one)
  end

  test "should get index" do
    get tarifas_url
    assert_response :success
  end

  test "should get new" do
    get new_tarifa_url
    assert_response :success
  end

  test "should create tarifa" do
    assert_difference('Tarifa.count') do
      post tarifas_url, params: { tarifa: { descripcion: @tarifa.descripcion, plan: @tarifa.plan, tarifa: @tarifa.tarifa, usuario: @tarifa.usuario } }
    end

    assert_redirected_to tarifa_url(Tarifa.last)
  end

  test "should show tarifa" do
    get tarifa_url(@tarifa)
    assert_response :success
  end

  test "should get edit" do
    get edit_tarifa_url(@tarifa)
    assert_response :success
  end

  test "should update tarifa" do
    patch tarifa_url(@tarifa), params: { tarifa: { descripcion: @tarifa.descripcion, plan: @tarifa.plan, tarifa: @tarifa.tarifa, usuario: @tarifa.usuario } }
    assert_redirected_to tarifa_url(@tarifa)
  end

  test "should destroy tarifa" do
    assert_difference('Tarifa.count', -1) do
      delete tarifa_url(@tarifa)
    end

    assert_redirected_to tarifas_url
  end
end
