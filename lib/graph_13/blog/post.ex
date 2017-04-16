defmodule Graph13.Blog.Post do
  use Ecto.Schema

  schema "blog_posts" do
    field :body, :string
    field :title, :string
    field :user_id, :id

    timestamps()
  end
end
