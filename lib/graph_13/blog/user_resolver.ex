defmodule Graph13.Blog.UserResolver do
  alias Graph13.{Blog.User, Repo}

  def all(_args, _info) do
    {:ok, Repo.all(User)}
  end
end