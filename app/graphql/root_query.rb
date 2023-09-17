# app/graphql/root_query.rb

# class RootQuery < GraphQL::Schema::Object
#   field :product_masters, resolver: Queries::ProductMasterQuery
#   field :brands, resolver: Queries::BrandQuery
#   # field :categories, resolver: Queries::CategoryQuery
#   # Add more fields as needed
# end



class RootQuery < GraphQL::Schema::Object
  # Define the product_masters field
  field :product_masters, [Types::ProductMasterType], null: true, description: "Fetch all product masters" do
  end
end