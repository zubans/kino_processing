require 'rails_helper'

RSpec.describe Session, type: :model do
  it ('should validate session params') do
    session = Session.new(s_time: '2021-01-01 12:00', film: Film.new(name: 'Terminator'))
    expect(session).to be_valid
  end

  it ('should validate session params') do
    session = Session.new(s_time: '2021-01-01 12:00', film: nil)
    expect(session).to_not be_valid
  end
end
