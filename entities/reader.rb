class Reader
  include Validation

  attr_reader :name, :email, :address

  def initialize(name:, email:, address:)
    @name = name
    @email = email
    @address = address
    validate
  end

  def to_s
    "Name: '#{name}' Email: '#{email}'"
  end

  private

  def validate
    check_type(name, String)
    check_type(email, String)
    check_type(address, Address)
    check_not_empty(name)
    check_not_empty(email)
  end
end
