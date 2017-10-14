class Company < Sequel::Model
  many_to_many :benefits
  many_to_many :locations
  many_to_many :sectors

  plugin :sluggable, :source => :name
end
