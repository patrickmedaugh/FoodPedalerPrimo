class SubscriptionsController < ApplicationController
  before_action :authenticate_user!
  def new
    @products = Product.all
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    old_subs = Subscription.where("user_id = ? AND product_id = ?", subscription_params[:user_id], subscription_params[:product_id])
    old_subs.each do |sub|
      sub.destroy
    end
    if @subscription.save
      redirect_to @subscription
    else
      flash[:error] = "Something went wrong"
    end
  end

  def show
    subscription = Subscription.find(params[:id])
    @decorator = {
      "product" => Product.find(subscription.product_id).name,
      "email" => User.find(subscription.user_id).email,
      "frequency" => subscription.frequency
    }
  end

  private

  def subscription_params
    params.require(:subscription).permit(:user_id, :product_id, :frequency)
  end
end
