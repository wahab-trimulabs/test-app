# frozen_string_literal: true

class Mutations::CreatePost < GraphQL::Schema::Mutation
  argument :title, String, required: true

  type Types::PostType

  def resolve(**args)
    Post.create(args);
  end

end
