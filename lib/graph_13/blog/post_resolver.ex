defmodule Graph13.Blog.PostResolver do
  alias Graph13.{Blog.Post, Repo}

  def all(_args, _info) do
    {:ok, Repo.all(Post)}
  end
end