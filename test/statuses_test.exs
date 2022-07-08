defmodule StatusesTest do
  use ExUnit.Case
  doctest Statuses

  test "get_statuses returns the list of statuses" do
    list = Statuses.get_statuses()
    # sample status we know is in the list
    sample = %Status{
      desc:
        "A person verified by a 3rd party OAuth provider or by confirming their email address",
      code: 1,
      text: :verified
    }

    assert Enum.member?(list, sample)
  end

  test "status_to_json returns the list of statuses as json" do
    json = Statuses.statuses_to_json()
    json_statuses = Jason.decode!(json)
    statuses = Statuses.get_statuses()

    assert length(json_statuses) == length(statuses)
  end
end
