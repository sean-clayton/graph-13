defmodule Graph13.BlogTest do
  use Graph13.DataCase

  alias Graph13.Blog
  alias Graph13.Blog.User

  @create_attrs %{email: "some email", name: "some name"}
  @update_attrs %{email: "some updated email", name: "some updated name"}
  @invalid_attrs %{email: nil, name: nil}

  def fixture(:user, attrs \\ @create_attrs) do
    {:ok, user} = Blog.create_user(attrs)
    user
  end

  test "list_users/1 returns all users" do
    user = fixture(:user)
    assert Blog.list_users() == [user]
  end

  test "get_user! returns the user with given id" do
    user = fixture(:user)
    assert Blog.get_user!(user.id) == user
  end

  test "create_user/1 with valid data creates a user" do
    assert {:ok, %User{} = user} = Blog.create_user(@create_attrs)
    assert user.email == "some email"
    assert user.name == "some name"
  end

  test "create_user/1 with invalid data returns error changeset" do
    assert {:error, %Ecto.Changeset{}} = Blog.create_user(@invalid_attrs)
  end

  test "update_user/2 with valid data updates the user" do
    user = fixture(:user)
    assert {:ok, user} = Blog.update_user(user, @update_attrs)
    assert %User{} = user
    assert user.email == "some updated email"
    assert user.name == "some updated name"
  end

  test "update_user/2 with invalid data returns error changeset" do
    user = fixture(:user)
    assert {:error, %Ecto.Changeset{}} = Blog.update_user(user, @invalid_attrs)
    assert user == Blog.get_user!(user.id)
  end

  test "delete_user/1 deletes the user" do
    user = fixture(:user)
    assert {:ok, %User{}} = Blog.delete_user(user)
    assert_raise Ecto.NoResultsError, fn -> Blog.get_user!(user.id) end
  end

  test "change_user/1 returns a user changeset" do
    user = fixture(:user)
    assert %Ecto.Changeset{} = Blog.change_user(user)
  end
end
