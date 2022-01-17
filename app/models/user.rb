class User < ApplicationRecord
  has_many :tickets

  attr_accessor :password

  validates :name, presence: true, uniqueness: true, length: { in: 3..20 }
  validates :email, presence: true, uniqueness: true
  validates_length_of :e_password, in: 6..200, on: :create
  validates_numericality_of :age, greater_than_or_equal_to: 18
end
