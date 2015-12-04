require 'rails_helper'

RSpec.describe Subscription, type: :model do
  context 'with valid params' do
    user = FactoryGirl.create(:user)
    let(:subsription){
      Subscription.new(user_id: user.id, frequency: 1)
    }
    it 'has users' do
      expect(subscription.user_id).to eq(user.id)
    end

    it 'has a product' do

    end
  end
end
