class CreateMainExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :main_exercises do |t|
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
