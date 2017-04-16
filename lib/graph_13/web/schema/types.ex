defmodule Graph13.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: Graph13.Repo

  object :blog_user do
    field :id, :id
    field :name, :string
    field :email, :string
    field :posts, list_of(:blog_post), resolve: assoc(:blog_posts)
  end

  object :blog_post do
    field :id, :id
    field :title, :string
    field :body, :string
    field :user, :blog_user, resolve: assoc(:blog_users)
  end
end