# app/graphql/queries/product_master_query.rb

module Queries
  class BrandQuery < Queries::BaseQuery
    type [Types::BrandType], null: false

    def resolve
      Brand.all
    end
  end
end
