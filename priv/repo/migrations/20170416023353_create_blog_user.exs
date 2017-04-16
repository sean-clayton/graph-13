defmodule Graph13.Repo.Migrations.CreateGraph13.Blog.User do
  use Ecto.Migration

  def change do
    create table(:blog_users) do
      add :name, :string
      add :email, :string

      timestamps()
    end

  end
end
