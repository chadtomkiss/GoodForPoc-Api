# frozen_string_literal: true

Sequel.migration do
  change do
    create_table(:companies) do
        primary_key :id

        String :name, null: false
        String :slug, null: false, index: true, unique: true
        String :description, text: true
        String :location
        String :website_uri
        String :careers_uri
        Float :rating

        DateTime :created_at, default: Sequel::SQL::Function.new(:now)
        DateTime :updated_at, default: Sequel::SQL::Function.new(:now)
    end
  end
end
