module Validation
  def check_type(value, check_class)
    raise IncorrectAttributeType unless value.is_a? check_class
  end
end
