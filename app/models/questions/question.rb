class Question < Sequel::Model
  one_to_many :options, class: :QuestionOption
  many_to_one :page, class: :QuestionPage
end
