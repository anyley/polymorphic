class Widget < ApplicationRecord
  has_and_belongs_to_many :pages
  belongs_to :element, polymorphic: true
  has_many :widget_attrs
end
