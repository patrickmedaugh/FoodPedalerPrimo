require 'rails_helper'

RSpec.describe Subscription, type: :model do
  context 'with associations' do
    let(:user){
      create(:user)
    }
    let(:product){
      create(:product)
    }
    let(:subscription){
      Subscription.new(user_id: user.id, product_id: product.id, frequency: 1)
    }
    it 'returns the user id' do
      expect(subscription.user).to eq(user)
    end

    it 'returns the product id' do
      expect(subscription.product).to eq(product)
    end
  end
end
