# frozen_string_literal: true

Sequel.migration do
  change do
    create_join_table(benefit_id: :benefits, company_id: :companies)
  end
end
