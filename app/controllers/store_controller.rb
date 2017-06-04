class StoreController < ApplicationController

  def index
    @products = Product.order(:title)
    @cart = current_cart
  end
  helper_method :current_cart
end
