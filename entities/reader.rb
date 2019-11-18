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
    check_not_empty(email)
    check_type(email, String)
    check_not_empty(name)
    check_type(address, Address)
  end
end
