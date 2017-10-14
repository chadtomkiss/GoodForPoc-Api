class Submission < Sequel::Model
  one_to_many :answers, class: :SubmissionAnswer
end
