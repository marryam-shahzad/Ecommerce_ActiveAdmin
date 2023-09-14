Rails.application.routes.draw do
  # devise_for :admin_users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :product_masters
  resources :categories
  resources :product_categories
  resources :brands
  resources :retailers
  resources :retailer_products
  # config/routes.rb

# namespace :admin do
#   resources :brands do
#     collection do
#       post 'csv_import'
#     end
#   end
# end

  namespace :admin do
    get 'csv_import', to: 'csv_import#index'
    post 'csv_import/import', to: 'csv_import#import_csv'
  end

end
