class Reader
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
    raise IncorrectAttributeType unless name.is_a? String
    raise IncorrectAttributeType unless email.is_a? String
    raise IncorrectAttributeType unless city.is_a? String
    raise IncorrectAttributeType unless street.is_a? String
    raise IncorrectAttributeType unless house.is_a? Integer
    raise IncorrectAttributeValue if house <= 0
  end
end
