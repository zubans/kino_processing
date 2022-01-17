require 'rails_helper'

RSpec.describe Ticket, type: :model do
  fixtures :sessions, :users
  it ('should validate ticket params') do
    ticket = Ticket.new(ticket_type: 'pop', session_id: 1, user_id: 1)
    expect(ticket).to be_valid
  end
end
