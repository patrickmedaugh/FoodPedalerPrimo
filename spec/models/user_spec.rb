require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = Factory.create!(:user)
  end

  it 'should create a new instance of a user' do
    expect(@user).to be_valid
  end

end
