class Reader
  include Validation
  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
    validate
  end

  def validate
    check_type name, String
    check_type email, String
    check_type city, String
    check_type street, String
    check_type house, Integer
    check_positive_value house
  end

  def to_s
    "Name: '#{name}' Email: '#{email}'"
  end
end
