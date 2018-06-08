RootQuery = GraphQL::ObjectType.define do
  name 'RootQuery'
  description 'The query root of this schema'
  field :profile do
    type !types.String
    resolve -> obj, args, context { 'World_from demo qraphql' }
  end
end
