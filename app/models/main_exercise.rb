class MainExercise < ActiveRecord::Base

  has_many :directions


  accepts_nested_attributes_for :directions,
                                reject_if: proc { |attributes| attributes['step'].blank? },
                                allow_destroy: true

  validates :title, :description, :image, presence: true

  has_attached_file :image, styles: { :medium => "400x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end