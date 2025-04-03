defmodule ReleaseDocker.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset

  schema "orders" do
    field :address, :string
    field :total_price, :integer
    field :total_quantity, :integer
    field :phone_number, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs, [:total_price, :total_quantity, :address, :phone_number])
    |> validate_required([:total_price, :total_quantity, :address, :phone_number])
  end
end
