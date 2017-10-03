# frozen_string_literal: true

Sequel.migration do
  up do
    alter_table(:questions) do
      drop_column :group

      add_foreign_key(:question_page_id, :question_pages)
    end
  end

  down do
    alter_table(:questions) do
      drop_foreign_key :question_page_id

      add_column :group, Integer
    end
  end
end
