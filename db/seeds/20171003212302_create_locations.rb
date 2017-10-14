Sequel.seed(:development, :test) do # Applies only to "development" and "test" environments
  def run
    [1..50].each do |i|
      Location.find_or_create(address: Faker::Address.street_address) do |location|
        location.city = Faker::Address.city
        location.state = Faker::Address.state
        location.country = Faker::Address.country
        location.latitude = Faker::Address.latitude
        location.longitude = Faker::Address.longitude
      end
    end
  end
end
