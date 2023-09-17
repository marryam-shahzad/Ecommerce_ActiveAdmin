Rails.application.routes.draw do
  # if Rails.env.development?
  #   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  # end
  # post "/graphql", to: "graphql#execute"

  post '/graphql', to: 'graphql#execute'
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end

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
# config/routes.rb
mount V1::API => '/api/v1'


  namespace :admin do
    get 'csv_import', to: 'csv_import#index'
    post 'csv_import/import', to: 'csv_import#import_csv'
  end

end
