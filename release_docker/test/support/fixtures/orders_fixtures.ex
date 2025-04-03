defmodule ReleaseDocker.OrdersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ReleaseDocker.Orders` context.
  """

  @doc """
  Generate a order.
  """
  def order_fixture(attrs \\ %{}) do
    {:ok, order} =
      attrs
      |> Enum.into(%{
        address: "some address",
        phone_number: "some phone_number",
        total_price: 42,
        total_quantity: 42
      })
      |> ReleaseDocker.Orders.create_order()

    order
  end
end
