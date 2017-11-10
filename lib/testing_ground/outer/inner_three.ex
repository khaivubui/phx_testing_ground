defmodule TestingGround.Outer.InnerThree do
  use Ecto.Schema
  import Ecto.Changeset
  alias TestingGround.Outer.InnerThree


  schema "inner_threes" do
    field :lol, :string

    timestamps()
  end

  @doc false
  def changeset(%InnerThree{} = inner_three, attrs) do
    inner_three
    |> cast(attrs, [:lol])
    |> validate_required([:lol])
  end
end
