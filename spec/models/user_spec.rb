require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = User.new
  end

  it 'should puts error without name' do
    expect(@user).to_not be_valid
  end

  it 'should be with name' do
    @user.name = 'Ivanov Ivan'
    @user.age = 18
    @user.email = 'email@email.email'
    @user.e_password = '123456'
    expect(@user).to be_valid
  end

  it 'age should be greater then 18' do
    @user.name = 'Ivanov Ivan'
    @user.age = 10
    expect(@user).to_not be_valid


  end
end
