class Ticket < ApplicationRecord
  enum ticket_type: %i[pop vip love]

  belongs_to :session
  belongs_to :user
end
