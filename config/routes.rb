Rails.application.routes.draw do
  resources :product_masters
  resources :categories
  resources :product_categories
  resources :brands
  resources :retailers
  resources :retailer_products
end
