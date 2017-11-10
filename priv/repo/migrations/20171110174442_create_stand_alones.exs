defmodule TestingGround.Repo.Migrations.CreateStandAlones do
  use Ecto.Migration

  def change do
    create table(:stand_alones) do
      add :title, :string

      timestamps()
    end

  end
end
