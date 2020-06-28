defmodule LiveViewStudio.Repo.Migrations.CreateVehicles do
  use Ecto.Migration

  def change do
    create table(:vehicles) do
      add :make, :string
      add :model, :string
      add :color, :string

      timestamps()
    end

  end
end
