# frozen_string_literal: true

Sequel.migration do
  change do
    create_table(:question_options) do
        primary_key :id
        foreign_key :question_id, :questions

        String :option, null: false

        DateTime :created_at, default: Sequel::SQL::Function.new(:now)
        DateTime :updated_at, default: Sequel::SQL::Function.new(:now)
    end
  end
end
