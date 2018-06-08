RootMutation = GraphQL::ObjectType.define do
  name 'RootMutation'
  field :profile do
    type !types.String
    resolve -> obj, args, context { 'World from demo qraphql' }
  end
end
