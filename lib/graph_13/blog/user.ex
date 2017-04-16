defmodule Graph13.Blog.User do
  use Ecto.Schema

  schema "blog_users" do
    field :email, :string
    field :name, :string

    timestamps()
  end
end
