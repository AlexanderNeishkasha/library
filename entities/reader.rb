class Reader
  include Validation
  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    validate(name: name, email: email, city: city, street: street, house: house)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end

  def validate(name:, email:, city:, street:, house:)
    check_type name, String
    check_type email, String
    check_type city, String
    check_type street, String
    check_type house, Integer
    raise IncorrectAttributeValue if house <= 0
  end
end
