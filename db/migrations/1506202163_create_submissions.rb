# frozen_string_literal: true

Sequel.migration do
  change do
    create_table(:submissions) do
        primary_key :id
        foreign_key :company_id, :companies

        DateTime :created_at, default: Sequel::SQL::Function.new(:now)
        DateTime :updated_at, default: Sequel::SQL::Function.new(:now)
    end
  end
end
