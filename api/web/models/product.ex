defmodule Api.Product do
  use Api.Web, :model

  schema "products" do
    field :name, :string
    field :forbidden_mood, :string
    field :featured_mood, :string
    field :priority, :integer

    timestamps
  end

  @required_fields ~w(name forbidden_mood featured_mood priority)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
