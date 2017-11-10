defmodule TestingGround.Repo.Migrations.CreateInnerThrees do
  use Ecto.Migration

  def change do
    create table(:inner_threes) do
      add :lol, :string

      timestamps()
    end

  end
end
