class Reader
  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end

  def to_hash
    {
      name: @name,
      email: @email,
      city: @city,
      street: @street,
      house: @house
    }
  end

  def self.create_from_hash(hash)
    new(hash)
  end
end
