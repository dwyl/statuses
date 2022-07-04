defmodule StatusesTest do
  use ExUnit.Case
  doctest Statuses

  test "parse_json returns a list of maps containing statuses" do
    list = Statuses.parse_json()
    # assert Enum.count(list) == Utils.count()

    # sample status we know is in the list
    sample =  %{
      "id" => "1",
      "text" => "verified"
    } |> Useful.atomize_map_keys()

    # find the sample quote in the List of Maps:
    [found] = Enum.map(list, fn q ->
      if q.text == sample.text do
        q
      end
    end)
    |> Enum.filter(& !is_nil(&1)) # filter out any nil values
    assert sample.id == found.id # sample status was found in the list
  end

  test "all statuses have :id and :text property" do
    Statuses.parse_json()
    |> Enum.each(fn(q) ->
      assert Map.has_key?(q, :id)
      assert Map.has_key?(q, :text)
      assert q.id > 0
      assert String.length(q.text) > 1
    end)
  end
end
