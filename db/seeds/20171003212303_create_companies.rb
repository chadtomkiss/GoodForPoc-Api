Sequel.seed(:development, :test) do # Applies only to "development" and "test" environments
  def run
    [1..10].each do |i|
      @company = Company.find_or_create(name: Faker::Company.name) do |company|
        company.description = Faker::Lorem.paragraph
        company.website_uri = 'https://' << Faker::Internet.domain_name
        company.careers_uri = 'https://' << Faker::Internet.domain_name
        company.rating = Faker::Number.between(1, 5)
      end

      @sector = Sector.order(Sequel.lit('RANDOM()')).first
      @company.add_sector(@sector)

      @locations = Location.order(Sequel.lit('RANDOM()')).limit(5).all
      @locations.each do |location|
        @company.add_location(location)
      end

      @benefits = Benefit.order(Sequel.lit('RANDOM()')).limit(2).all
      @benefits.each do |benefit|
        @company.add_benefit(benefit)
      end
    end
  end
end
