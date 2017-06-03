class LineItem < ApplicationRecord
  # remove belongs_to order if function add item to cart start to fail, this is added for testing purpose
  # belongs_to :order
  belongs_to :product
  belongs_to :cart
  def total_price
    product.price * quantity
  end

end
