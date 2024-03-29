require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
  end

  test 'should get new' do
    item = LineItem.new
    item.build_cart
    item.product = products(:ruby)
    item.save!
    session[:cart_id] = item.cart.id

    get :new
    assert_response :success
  end

  test 'should create order' do
    assert_difference('Order.count') do
      post :create, order: @order.attributes
    end
    assert_redirected_to store_index_path
  end

  test 'should show order' do
    get :show, id: @order
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @order
    assert_response :success
  end

  test 'should update order' do
    put :update, id: @order, order: { address: @order.address, email: @order.email, name: @order.name, pay_type: @order.pay_type }
    assert_redirected_to order_url(@order)
  end

  test 'should destroy order' do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end
    assert_redirected_to orders_path
  end

  test 'requires item in cart' do
    get :new
    assert_redirected_to store_index_path
    assert_equal flash[:notice], 'Your cart is empty'
  end

end
