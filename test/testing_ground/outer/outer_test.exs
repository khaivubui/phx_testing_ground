defmodule TestingGround.OuterTest do
  use TestingGround.DataCase

  alias TestingGround.Outer

  describe "inners" do
    alias TestingGround.Outer.Inner

    @valid_attrs %{field_one: "some field_one"}
    @update_attrs %{field_one: "some updated field_one"}
    @invalid_attrs %{field_one: nil}

    def inner_fixture(attrs \\ %{}) do
      {:ok, inner} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Outer.create_inner()

      inner
    end

    test "list_inners/0 returns all inners" do
      inner = inner_fixture()
      assert Outer.list_inners() == [inner]
    end

    test "get_inner!/1 returns the inner with given id" do
      inner = inner_fixture()
      assert Outer.get_inner!(inner.id) == inner
    end

    test "create_inner/1 with valid data creates a inner" do
      assert {:ok, %Inner{} = inner} = Outer.create_inner(@valid_attrs)
      assert inner.field_one == "some field_one"
    end

    test "create_inner/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Outer.create_inner(@invalid_attrs)
    end

    test "update_inner/2 with valid data updates the inner" do
      inner = inner_fixture()
      assert {:ok, inner} = Outer.update_inner(inner, @update_attrs)
      assert %Inner{} = inner
      assert inner.field_one == "some updated field_one"
    end

    test "update_inner/2 with invalid data returns error changeset" do
      inner = inner_fixture()
      assert {:error, %Ecto.Changeset{}} = Outer.update_inner(inner, @invalid_attrs)
      assert inner == Outer.get_inner!(inner.id)
    end

    test "delete_inner/1 deletes the inner" do
      inner = inner_fixture()
      assert {:ok, %Inner{}} = Outer.delete_inner(inner)
      assert_raise Ecto.NoResultsError, fn -> Outer.get_inner!(inner.id) end
    end

    test "change_inner/1 returns a inner changeset" do
      inner = inner_fixture()
      assert %Ecto.Changeset{} = Outer.change_inner(inner)
    end
  end

  describe "inner_twos" do
    alias TestingGround.Outer.Inner_Two

    @valid_attrs %{field_one: "some field_one"}
    @update_attrs %{field_one: "some updated field_one"}
    @invalid_attrs %{field_one: nil}

    def inner__two_fixture(attrs \\ %{}) do
      {:ok, inner__two} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Outer.create_inner__two()

      inner__two
    end

    test "list_inner_twos/0 returns all inner_twos" do
      inner__two = inner__two_fixture()
      assert Outer.list_inner_twos() == [inner__two]
    end

    test "get_inner__two!/1 returns the inner__two with given id" do
      inner__two = inner__two_fixture()
      assert Outer.get_inner__two!(inner__two.id) == inner__two
    end

    test "create_inner__two/1 with valid data creates a inner__two" do
      assert {:ok, %Inner_Two{} = inner__two} = Outer.create_inner__two(@valid_attrs)
      assert inner__two.field_one == "some field_one"
    end

    test "create_inner__two/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Outer.create_inner__two(@invalid_attrs)
    end

    test "update_inner__two/2 with valid data updates the inner__two" do
      inner__two = inner__two_fixture()
      assert {:ok, inner__two} = Outer.update_inner__two(inner__two, @update_attrs)
      assert %Inner_Two{} = inner__two
      assert inner__two.field_one == "some updated field_one"
    end

    test "update_inner__two/2 with invalid data returns error changeset" do
      inner__two = inner__two_fixture()
      assert {:error, %Ecto.Changeset{}} = Outer.update_inner__two(inner__two, @invalid_attrs)
      assert inner__two == Outer.get_inner__two!(inner__two.id)
    end

    test "delete_inner__two/1 deletes the inner__two" do
      inner__two = inner__two_fixture()
      assert {:ok, %Inner_Two{}} = Outer.delete_inner__two(inner__two)
      assert_raise Ecto.NoResultsError, fn -> Outer.get_inner__two!(inner__two.id) end
    end

    test "change_inner__two/1 returns a inner__two changeset" do
      inner__two = inner__two_fixture()
      assert %Ecto.Changeset{} = Outer.change_inner__two(inner__two)
    end
  end
end
