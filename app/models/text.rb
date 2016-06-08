class Text < ApplicationRecord
  has_one :widget, as: :element
end
