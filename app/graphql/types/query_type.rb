# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject

    field :all_posts, [Types::PostType], null: true, description: 'Return all posts in DB'
    def all_posts
      Post.all
    end
      
  end
end
