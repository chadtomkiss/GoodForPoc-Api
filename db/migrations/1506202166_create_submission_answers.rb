# frozen_string_literal: true

Sequel.migration do
  change do
    create_table(:submission_answers) do
        primary_key :id
        foreign_key :question_id, :questions
        foreign_key :question_option_id, :question_options, null: true

        String :answer, text: true

        DateTime :created_at, default: Sequel::SQL::Function.new(:now)
        DateTime :updated_at, default: Sequel::SQL::Function.new(:now)
    end
  end
end
