class Benefit < Sequel::Model
  many_to_many :companies
end
