class Picture < ApplicationRecord
  has_one :widget, as: :element
end
