# app/graphql/schema.rb

class Schema < GraphQL::Schema
  query(RootQuery)
end
