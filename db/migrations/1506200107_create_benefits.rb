# frozen_string_literal: true

Sequel.migration do
  change do
    create_table(:benefits) do
        primary_key :id

        String :name, null: false, unique: true

        DateTime :created_at, default: Sequel::SQL::Function.new(:now)
        DateTime :updated_at, default: Sequel::SQL::Function.new(:now)
    end
  end
end
