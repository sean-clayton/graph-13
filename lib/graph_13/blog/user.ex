defmodule Graph13.Blog.User do
  use Ecto.Schema

  schema "blog_users" do
    field :email, :string
    field :name, :string
    has_many :posts, Graph13.Blog.Post

    timestamps()
  end
end
