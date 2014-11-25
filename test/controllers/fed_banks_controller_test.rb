require 'test_helper'

class FedBanksControllerTest < ActionController::TestCase
  setup do
    @fed_bank = fed_banks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fed_banks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fed_bank" do
    assert_difference('FedBank.count') do
      post :create, fed_bank: { address: @fed_bank.address, change_date: @fed_bank.change_date, city: @fed_bank.city, frb_number: @fed_bank.frb_number, name: @fed_bank.name, new_routing: @fed_bank.new_routing, office_code: @fed_bank.office_code, record_type: @fed_bank.record_type, rt_number: @fed_bank.rt_number, state: @fed_bank.state, tel_Area: @fed_bank.tel_Area, tel_prefix_num: @fed_bank.tel_prefix_num, tel_suffix_num: @fed_bank.tel_suffix_num, zipcode: @fed_bank.zipcode, zipcode_ext: @fed_bank.zipcode_ext }
    end

    assert_redirected_to fed_bank_path(assigns(:fed_bank))
  end

  test "should show fed_bank" do
    get :show, id: @fed_bank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fed_bank
    assert_response :success
  end

  test "should update fed_bank" do
    patch :update, id: @fed_bank, fed_bank: { address: @fed_bank.address, change_date: @fed_bank.change_date, city: @fed_bank.city, frb_number: @fed_bank.frb_number, name: @fed_bank.name, new_routing: @fed_bank.new_routing, office_code: @fed_bank.office_code, record_type: @fed_bank.record_type, rt_number: @fed_bank.rt_number, state: @fed_bank.state, tel_Area: @fed_bank.tel_Area, tel_prefix_num: @fed_bank.tel_prefix_num, tel_suffix_num: @fed_bank.tel_suffix_num, zipcode: @fed_bank.zipcode, zipcode_ext: @fed_bank.zipcode_ext }
    assert_redirected_to fed_bank_path(assigns(:fed_bank))
  end

  test "should destroy fed_bank" do
    assert_difference('FedBank.count', -1) do
      delete :destroy, id: @fed_bank
    end

    assert_redirected_to fed_banks_path
  end
end
