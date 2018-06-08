ArticleType = GraphQL::ObjectType.define do
    name "Article"
    field :id, types.Int
    field :title, types.String
    field :body, types.String
    field :comments, types[CommentType] do
      preload :comments
    end
end