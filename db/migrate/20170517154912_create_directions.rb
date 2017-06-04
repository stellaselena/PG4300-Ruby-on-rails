class CreateDirections < ActiveRecord::Migration[5.0]
  def change
    create_table :directions do |t|
      t.text :step
      t.belongs_to :main_exercise, foreign_key: true

      t.timestamps
    end
  end
end