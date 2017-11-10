defmodule TestingGround.Outer do
  @moduledoc """
  The Outer context.
  """

  import Ecto.Query, warn: false
  alias TestingGround.Repo

  alias TestingGround.Outer.Inner

  @doc """
  Returns the list of inners.

  ## Examples

      iex> list_inners()
      [%Inner{}, ...]

  """
  def list_inners do
    Repo.all(Inner)
  end

  @doc """
  Gets a single inner.

  Raises `Ecto.NoResultsError` if the Inner does not exist.

  ## Examples

      iex> get_inner!(123)
      %Inner{}

      iex> get_inner!(456)
      ** (Ecto.NoResultsError)

  """
  def get_inner!(id), do: Repo.get!(Inner, id)

  @doc """
  Creates a inner.

  ## Examples

      iex> create_inner(%{field: value})
      {:ok, %Inner{}}

      iex> create_inner(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_inner(attrs \\ %{}) do
    %Inner{}
    |> Inner.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a inner.

  ## Examples

      iex> update_inner(inner, %{field: new_value})
      {:ok, %Inner{}}

      iex> update_inner(inner, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_inner(%Inner{} = inner, attrs) do
    inner
    |> Inner.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Inner.

  ## Examples

      iex> delete_inner(inner)
      {:ok, %Inner{}}

      iex> delete_inner(inner)
      {:error, %Ecto.Changeset{}}

  """
  def delete_inner(%Inner{} = inner) do
    Repo.delete(inner)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking inner changes.

  ## Examples

      iex> change_inner(inner)
      %Ecto.Changeset{source: %Inner{}}

  """
  def change_inner(%Inner{} = inner) do
    Inner.changeset(inner, %{})
  end

  alias TestingGround.Outer.Inner_Two

  @doc """
  Returns the list of inner_twos.

  ## Examples

      iex> list_inner_twos()
      [%Inner_Two{}, ...]

  """
  def list_inner_twos do
    Repo.all(Inner_Two)
  end

  @doc """
  Gets a single inner__two.

  Raises `Ecto.NoResultsError` if the Inner  two does not exist.

  ## Examples

      iex> get_inner__two!(123)
      %Inner_Two{}

      iex> get_inner__two!(456)
      ** (Ecto.NoResultsError)

  """
  def get_inner__two!(id), do: Repo.get!(Inner_Two, id)

  @doc """
  Creates a inner__two.

  ## Examples

      iex> create_inner__two(%{field: value})
      {:ok, %Inner_Two{}}

      iex> create_inner__two(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_inner__two(attrs \\ %{}) do
    %Inner_Two{}
    |> Inner_Two.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a inner__two.

  ## Examples

      iex> update_inner__two(inner__two, %{field: new_value})
      {:ok, %Inner_Two{}}

      iex> update_inner__two(inner__two, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_inner__two(%Inner_Two{} = inner__two, attrs) do
    inner__two
    |> Inner_Two.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Inner_Two.

  ## Examples

      iex> delete_inner__two(inner__two)
      {:ok, %Inner_Two{}}

      iex> delete_inner__two(inner__two)
      {:error, %Ecto.Changeset{}}

  """
  def delete_inner__two(%Inner_Two{} = inner__two) do
    Repo.delete(inner__two)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking inner__two changes.

  ## Examples

      iex> change_inner__two(inner__two)
      %Ecto.Changeset{source: %Inner_Two{}}

  """
  def change_inner__two(%Inner_Two{} = inner__two) do
    Inner_Two.changeset(inner__two, %{})
  end
end
