class SubscriptionsController < ApplicationController
  before_action :authenticate_user!
  def new
    @products = Product.all
  end
end
