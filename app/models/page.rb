class Page < ApplicationRecord
  has_and_belongs_to_many :widgets
end
