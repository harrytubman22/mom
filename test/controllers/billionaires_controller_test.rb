require 'test_helper'

class BillionairesControllerTest < ActionController::TestCase
  setup do
    @billionaire = billionaires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billionaires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billionaire" do
    assert_difference('Billionaire.count') do
      post :create, billionaire: { address: @billionaire.address, avatar: @billionaire.avatar, industry: @billionaire.industry, name: @billionaire.name, net_worth: @billionaire.net_worth }
    end

    assert_redirected_to billionaire_path(assigns(:billionaire))
  end

  test "should show billionaire" do
    get :show, id: @billionaire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @billionaire
    assert_response :success
  end

  test "should update billionaire" do
    patch :update, id: @billionaire, billionaire: { address: @billionaire.address, avatar: @billionaire.avatar, industry: @billionaire.industry, name: @billionaire.name, net_worth: @billionaire.net_worth }
    assert_redirected_to billionaire_path(assigns(:billionaire))
  end

  test "should destroy billionaire" do
    assert_difference('Billionaire.count', -1) do
      delete :destroy, id: @billionaire
    end

    assert_redirected_to billionaires_path
  end
end
