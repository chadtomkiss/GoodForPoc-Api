# frozen_string_literal: true

Sequel.migration do
  change do
    alter_table(:companies) do
      drop_column :location
    end
  end
end
