class SubmissionAnswer < Sequel::Model
  many_to_one :submission
end
