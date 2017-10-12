class Location < Sequel::Model
  many_to_many :companies
end
