module Types
  class QueryType < Types::BaseObject
    field :products, [ProductMastersType], null: true, description: "A list of products" do
      argument :id, Int, required: false
      argument :name, String, required: false
      argument :description, String, required: false
      argument :price, Float, required: false
    end

    def products(id: nil)
      ProductMaster.all
    end
  end
end


#     # field :node, Types::NodeType, null: true, description: "Fetches an object given its ID." do
#     #   argument :id, ID, required: true, description: "ID of the object."
#     # end

#     # field :products, [ProductMasterType], null: true, resolve: -> (_obj, _args, _ctx) { ProductMaster.all }


#     def node(id:)
#       ProductMaster.all
#     end

#     # field :nodes, [Types::NodeType, null: true], null: true, description: "Fetches a list of objects given a list of IDs." do
#     #   argument :ids, [ID], required: true, description: "IDs of the objects."
#     # end

#     # def nodes(ids:)
#     #   ids.map { |id| context.schema.object_from_id(id, context) }
#     # end

#     # # Add root-level fields here.
#     # # They will be entry points for queries on your schema.

#     # # TODO: remove me
#     # field :test_field, String, null: false,
#     #   description: "An example field added by the generator"
#     # def test_field
#     #   "Hello World!"
#     # end
#   end
# end



