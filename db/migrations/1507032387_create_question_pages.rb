# frozen_string_literal: true

Sequel.migration do
  change do
    create_table(:question_pages) do
      primary_key :id

      String :title, null: false
      Integer :page, index: true, unique: true
      jsonb :attributes
    end
  end
end
