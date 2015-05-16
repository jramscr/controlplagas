require 'test_helper'

class PaymentIncreasesControllerTest < ActionController::TestCase
  setup do
    @payment_increase = payment_increases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_increases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_increase" do
    assert_difference('PaymentIncrease.count') do
      post :create, payment_increase: { frequency: @payment_increase.frequency, percentage: @payment_increase.percentage }
    end

    assert_redirected_to payment_increase_path(assigns(:payment_increase))
  end

  test "should show payment_increase" do
    get :show, id: @payment_increase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment_increase
    assert_response :success
  end

  test "should update payment_increase" do
    patch :update, id: @payment_increase, payment_increase: { frequency: @payment_increase.frequency, percentage: @payment_increase.percentage }
    assert_redirected_to payment_increase_path(assigns(:payment_increase))
  end

  test "should destroy payment_increase" do
    assert_difference('PaymentIncrease.count', -1) do
      delete :destroy, id: @payment_increase
    end

    assert_redirected_to payment_increases_path
  end
end
