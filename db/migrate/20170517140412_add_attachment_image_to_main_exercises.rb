class AddAttachmentImageToMainExercises < ActiveRecord::Migration
  def self.up
    change_table :main_exercises do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :main_exercises, :image
  end
end
