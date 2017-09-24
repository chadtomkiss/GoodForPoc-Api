# frozen_string_literal: true

Sequel.migration do
  change do
    create_table(:locations) do
      primary_key :id

      String :address, text: true
      String :city
      String :state
      String :country
      Numeric :latitude
      Numeric :longitude

      DateTime :created_at, default: Sequel::SQL::Function.new(:now)
      DateTime :updated_at, default: Sequel::SQL::Function.new(:now)
    end
  end
end
