require 'rails_helper'

RSpec.describe Film, type: :model do
  it 'should be with name' do
    film = Film.new(name:'Avram Russo')
    expect(film).to be_valid
  end

  it 'should validate name' do
    film = Film.new
    expect(film).to_not be_valid
  end
end
