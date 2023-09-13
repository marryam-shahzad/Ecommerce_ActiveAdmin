Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :product_masters
  resources :categories
  resources :product_categories
  resources :brands
  resources :retailers
  resources :retailer_products
end
