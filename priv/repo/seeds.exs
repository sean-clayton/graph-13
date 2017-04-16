# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Graph13.Repo.insert!(%Graph13.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Graph13.Blog.{User, Post}
alias Graph13.Repo

Repo.insert!(%User{name: "Bob the Builder", email: "bob@canwefix.it"})
Repo.insert!(%User{name: "Luke Skywalker", email: "luke@thejedimuste.nd"})

for _ <- 1..10 do
  Repo.insert(%Post{
    title: Faker.Lorem.sentence,
    body: Faker.Lorem.paragraphs(%Range{first: 1, last: 3}) |> Enum.join("\n\n"),
    blog_users_id: [1, 2] |> Enum.take_random(1) |> hd
  })
end
