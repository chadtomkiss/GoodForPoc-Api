# frozen_string_literal: true

Sequel.migration do
  change do
    create_table(:sectors) do
        primary_key :id
        String :name, null: false, unique: true
        String :slug, null: false, index: true, unique: true

        DateTime :created_at, default: Sequel::SQL::Function.new(:now)
        DateTime :updated_at, default: Sequel::SQL::Function.new(:now)
    end
  end
end
