defmodule Voxbone.ConnectionTest do
  @moduledoc false

  use ExUnit.Case, async: false

  alias Voxbone.Connection
  alias Voxbone.Api.Inventory
  alias Voxbone.Model.ListCountryResponse

  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  setup do
    Application.put_env(:voxbone, :environment, :sandbox)
    Application.put_env(:voxbone, :username, System.get_env("VOXBONE_USERNAME"))
    Application.put_env(:voxbone, :password, System.get_env("VOXBONE_PASSWORD"))
  end

  test "makes connection", %{test: test} do
    use_cassette to_string(test) do
      assert {:ok, %ListCountryResponse{}} = Inventory.list_country(Connection.new(), 1, 1)
    end
  end
end
