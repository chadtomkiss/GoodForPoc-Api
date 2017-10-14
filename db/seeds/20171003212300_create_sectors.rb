Sequel.seed(:development, :test) do # Applies only to "development" and "test" environments
  def run
    [
      'Social good',
      'Education',
      'Agency',
      'Software',
      'Health',
      'Data',
      'Music',
      'Home improvement',
      'Financial',
      'E-commerce',
      'Bootcamp',
      'Government',
      'Hardware',
      'Other'
    ].each do |name|
      Sector.find_or_create(name: name)
    end
  end
end
