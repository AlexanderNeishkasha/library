class Address
  include Validation

  attr_reader :city, :street, :house

  def initialize(city:, street:, house:)
    @city = city
    @street = street
    @house = house
    validate
  end

  private

  def validate
    check_type(city, String)
    check_not_empty(city)
    check_type(street, String)
    check_not_empty(street)
    check_type(house, Integer)
    check_positive_value(house)
  end
end
