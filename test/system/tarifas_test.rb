require "application_system_test_case"

class TarifasTest < ApplicationSystemTestCase
  setup do
    @tarifa = tarifas(:one)
  end

  test "visiting the index" do
    visit tarifas_url
    assert_selector "h1", text: "Tarifas"
  end

  test "creating a Tarifa" do
    visit tarifas_url
    click_on "New Tarifa"

    fill_in "Descripcion", with: @tarifa.descripcion
    fill_in "Plan", with: @tarifa.plan
    fill_in "Tarifa", with: @tarifa.tarifa
    fill_in "Usuario", with: @tarifa.usuario
    click_on "Create Tarifa"

    assert_text "Tarifa was successfully created"
    click_on "Back"
  end

  test "updating a Tarifa" do
    visit tarifas_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @tarifa.descripcion
    fill_in "Plan", with: @tarifa.plan
    fill_in "Tarifa", with: @tarifa.tarifa
    fill_in "Usuario", with: @tarifa.usuario
    click_on "Update Tarifa"

    assert_text "Tarifa was successfully updated"
    click_on "Back"
  end

  test "destroying a Tarifa" do
    visit tarifas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tarifa was successfully destroyed"
  end
end
