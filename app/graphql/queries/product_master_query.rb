# app/graphql/queries/product_master_query.rb

module Queries
  class ProductMasterQuery < Queries::BaseQuery
    type [Types::ProductMasterType], null: false

    def resolve
      ProductMaster.all
    end
  end
end
