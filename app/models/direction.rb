class Direction < ApplicationRecord
  belongs_to :main_exercise, inverse_of: :directions
end
