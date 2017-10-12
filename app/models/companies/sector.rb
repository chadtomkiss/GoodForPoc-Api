class Sector < Sequel::Model
  many_to_many :companies

  plugin :sluggable, :source => :name
end
