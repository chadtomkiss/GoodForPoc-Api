# frozen_string_literal: true

Sequel.migration do
  change do
    create_join_table(company_id: :companies, location_id: :locations)
  end
end
