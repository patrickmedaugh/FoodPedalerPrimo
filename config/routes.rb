Rails.application.routes.draw do
  root "subscriptions#new"
  devise_for :users
  resources :subscriptions
end
