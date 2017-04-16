defmodule Graph13.Schema do
  use Absinthe.Schema
  import_types Graph13.Schema.Types

  query do
    field :posts, list_of(:blog_post) do
      resolve &Graph13.Blog.PostResolver.all/2
    end

    field :users, list_of(:blog_user) do
      resolve &Graph13.Blog.UserResolver.all/2
    end
  end
end