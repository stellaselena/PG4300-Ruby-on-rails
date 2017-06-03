require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test 'should get index' do
    get products_url
    assert_response :success
    @update = {
        title: 'Creatine Powder',
        description: 'The only way to get pumped',
        image_url: 'creatine_powder.png',
        price: 19.95
    }

  end

  test 'should get new' do
    get new_product_url
    assert_response :success
  end

  test 'should show product' do
    get product_url(@product)
    assert_response :success
  end

  test 'should get edit' do
    get edit_product_url(@product)
    assert_response :success
  end

  test 'should destroy product' do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
