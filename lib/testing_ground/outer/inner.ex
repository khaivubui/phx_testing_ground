defmodule TestingGround.Outer.Inner do
  use Ecto.Schema
  import Ecto.Changeset
  alias TestingGround.Outer.Inner


  schema "inners" do
    field :field_one, :string

    timestamps()
  end

  @doc false
  def changeset(%Inner{} = inner, attrs) do
    inner
    |> cast(attrs, [:field_one])
    |> validate_required([:field_one])
  end
end
