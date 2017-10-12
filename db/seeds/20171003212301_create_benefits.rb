Sequel.seed(:development, :test) do # Applies only to "development" and "test" environments
  def run
    [
      'Remote Working',
      'Gym Membership',
      'Amazon Kindle',
      'Fitbit'
    ].each do |name|
      Benefit.find_or_create(name: name)
    end
  end
end
