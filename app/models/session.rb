class Session < ApplicationRecord
  belongs_to :film
  has_one :ticket

  validates_presence_of :s_time, :film

  scope :actual, -> { where('s_time >= ?', Time.now) }
end
