defmodule TestingGround.Outer.Inner_Two do
  use Ecto.Schema
  import Ecto.Changeset
  alias TestingGround.Outer.Inner_Two


  schema "inner_twos" do
    field :field_one, :string

    timestamps()
  end

  @doc false
  def changeset(%Inner_Two{} = inner__two, attrs) do
    inner__two
    |> cast(attrs, [:field_one])
    |> validate_required([:field_one])
  end
end
