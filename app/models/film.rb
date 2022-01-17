class Film < ApplicationRecord
  has_many :session
  has_one :trailer

  validates_presence_of :name
end
