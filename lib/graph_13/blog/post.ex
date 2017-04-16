defmodule Graph13.Blog.Post do
  use Ecto.Schema

  schema "blog_posts" do
    field :body, :string
    field :title, :string
    belongs_to :blog_users, Graph13.Blog.User, foreign_key: :blog_users_id

    timestamps()
  end
end
