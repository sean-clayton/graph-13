defmodule Graph13.Blog.User do
  use Ecto.Schema

  schema "blog_users" do
    field :email, :string
    field :name, :string
    has_many :blog_posts, Graph13.Blog.Post, foreign_key: :blog_users_id

    timestamps()
  end
end
