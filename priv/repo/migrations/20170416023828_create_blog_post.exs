defmodule Graph13.Repo.Migrations.CreateGraph13.Blog.Post do
  use Ecto.Migration

  def change do
    create table(:blog_posts) do
      add :title, :string
      add :body, :text
      add :user_id, references(:blog_users, on_delete: :nothing)

      timestamps()
    end

    create index(:blog_posts, [:user_id])
  end
end
