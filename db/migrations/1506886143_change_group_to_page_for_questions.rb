# frozen_string_literal: true

Sequel.migration do
  change do
    alter_table(:questions) do
      rename_column :group, :page
    end
  end
end
