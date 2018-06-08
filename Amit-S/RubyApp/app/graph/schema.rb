Schema = GraphQL::Schema.define do
  query RootQuery
  mutation RootMutation
  max_depth 12
end