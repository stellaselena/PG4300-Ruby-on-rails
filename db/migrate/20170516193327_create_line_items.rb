class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.reference :product_id, index: true
      t.belongs_to :cart_id, index: true
      t.timestamps
    end
  end
end
