class Trailer < ApplicationRecord
  belongs_to :film

  validates :from_date, :to_date, presence: true

  scope :actual, -> { where('from_date >= ? ', Time.now - 2.days) }
end
