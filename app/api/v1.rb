module V1
  class API < Grape::API
    format :json



# PRODUCT MASTERS
    resource :product_masters do
      desc 'Get a list of products'
      get do
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

  end
end
