class QuestionOption < Sequel::Model
  many_to_one :question
end
