test 'requires item in cart' do
  get :new
  assert_redirected_to store_index_path
  assert_equal flash[:notice], 'Your cart is empty'
end

test 'should get new' do
  cart = Cart.create
  session[:cart_id] = cart.id
  LineItem.create(cart: cart, product: products(:ruby))

  get :new
  assert_response :success
end

test 'should create order' do
  assert_difference('Order.count') do
    post :create, order: @order.attributes
  end
  assert_redirected_to store_index_path
end

