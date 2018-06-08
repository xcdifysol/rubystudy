CommentType = GraphQL::ObjectType.define do
    name "Comment"
    field :id, types.Int
    field :comment, types.String
    field :user, -> { UserType } do
      resolve -> (obj, args, ctx) {
        RecordLoader.for(User).load(obj.user_id)
      }
    end
end