module V1
  class API < Grape::API
    # include Grape::API::Helpers
    # include ::GrapeJwt::Authentication
    
    format :json


# helpers do
#       def authenticate!
#         user_id = JWT.decode(token, Rails.application.config.jwt_secret, true, algorithm: 'HS256')[0]['user_id']
#         @current_user = User.find(user_id)
#       rescue JWT::DecodeError
#         error!('Invalid token', 401)
#       end

#       def current_user
#         @current_user
#       end
#     end


# PRODUCT MASTERS
    resource :product_masters do
      desc 'Get a list of products'
      get do
          # authenticate!
        ProductMaster.all
      end

      desc 'Get a specific product'
      params do
        requires :id, type: Integer
      end
      route_param :id do
        get do
          product = ProductMaster.find_by(id: params[:id])
          if product
            product
          else
            error!('No data found by this ID', 404)
          end
        end
      end
    end

    # Define more resources and routes as needed


# BRANDS
    resource :brands do
      desc 'Get a list of products'
      get do
        Brand.all
      end

      desc 'Get a specific product'
      params do
        requires :id, type: Integer
      end
      route_param :id do
        get do
          brand = Brand.find_by(id: params[:id])

          if brand
            brand
          else
            error!('No data found by this ID', 404)
          end
        end
      end
    end


# CATEGORIES
    resource :categories do
      desc 'Get a list of products'
      get do
        Category.all
      end

      desc 'Get a specific product'
      params do
        requires :id, type: Integer
      end
      route_param :id do
        get do
          category = Category.find_by(id: params[:id])

          if category 
            category
          else
            error!('No data found by this ID', 404)
          end
        end
      end
    end



# RETAILERS
    resource :retailers do
      desc 'Get a list of products'
      get do
        Retailer.all
      end

      desc 'Get a specific product'
      params do
        requires :id, type: Integer
      end
      route_param :id do
        get do
          retailer = Retailer.find_by(id: params[:id])

          if retailer
            retailer
          else
            error!('No data found by this ID', 404)
          end
        end
      end
    end


# PRODUCT CATEGORIES
     resource :product_categories do
      desc 'Get a list of products'
      get do
        ProductCategory.all
      end

      desc 'Get a specific product'
      params do
        requires :id, type: Integer
      end
      route_param :id do
        get do
          product_category = ProductCategory.find_by(id: params[:id])

          if product_category
            product_category
          else
            error!('No data found by this ID', 404)
          end
        end
      end
    end


# RETAILER PRODUCTS
     resource :retailer_products do
      desc 'Get a list of products'
      get do
        RetailerProduct.all
      end

      desc 'Get a specific product'
      params do
        requires :id, type: Integer
      end
      route_param :id do
        get do
          retailer_product = RetailerProduct.find_by(id: params[:id])

          if retailer_product
            retailer_product
          else
            error!('No data found by this ID', 404)
          end
        end
      end
    end






# resource :auth do
#       desc 'Authenticate and get JWT token'
#       params do
#         requires :username, type: String
#         requires :password, type: String
#       end
#       post 'login' do
#         # Authenticate user (e.g., check credentials)
#         authenticated_user = User.find_by(username: params[:username], password: params[:password])

#         if authenticated_user
#           jwt_token = GrapeJwt::Token.generate(sub: authenticated_user.id)
#           { token: jwt_token }
#         else
#           error!('Authentication failed', 401)
#         end
#       end
#     end




  end
end
