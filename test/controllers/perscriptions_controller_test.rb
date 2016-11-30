require 'test_helper'

class PerscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perscription = perscriptions(:one)
  end

  test "should get index" do
    get perscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_perscription_url
    assert_response :success
  end

  test "should create perscription" do
    assert_difference('Perscription.count') do
      post perscriptions_url, params: { perscription: { dosage: @perscription.dosage, drug_name: @perscription.drug_name, refils: @perscription.refils } }
    end

    assert_redirected_to perscription_url(Perscription.last)
  end

  test "should show perscription" do
    get perscription_url(@perscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_perscription_url(@perscription)
    assert_response :success
  end

  test "should update perscription" do
    patch perscription_url(@perscription), params: { perscription: { dosage: @perscription.dosage, drug_name: @perscription.drug_name, refils: @perscription.refils } }
    assert_redirected_to perscription_url(@perscription)
  end

  test "should destroy perscription" do
    assert_difference('Perscription.count', -1) do
      delete perscription_url(@perscription)
    end

    assert_redirected_to perscriptions_url
  end
end
