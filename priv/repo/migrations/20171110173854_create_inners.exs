defmodule TestingGround.Repo.Migrations.CreateInners do
  use Ecto.Migration

  def change do
    create table(:inners) do
      add :field_one, :string

      timestamps()
    end

  end
end
