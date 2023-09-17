# app/graphql/types/brand_type.rb

module Types
  class BrandType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    # You can add more fields as needed
    # field :products, [ProductMasterType], null: true, resolve: -> (obj, _args, _ctx) { obj.products }
  end
end
