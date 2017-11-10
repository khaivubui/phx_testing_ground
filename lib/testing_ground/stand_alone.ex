defmodule TestingGround.StandAlone do
  use Ecto.Schema
  import Ecto.Changeset
  alias TestingGround.StandAlone


  schema "stand_alones" do
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%StandAlone{} = stand_alone, attrs) do
    stand_alone
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
