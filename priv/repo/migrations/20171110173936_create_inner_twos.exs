defmodule TestingGround.Repo.Migrations.CreateInnerTwos do
  use Ecto.Migration

  def change do
    create table(:inner_twos) do
      add :field_one, :string

      timestamps()
    end

  end
end
