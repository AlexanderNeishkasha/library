module Validation
  def check_type(value, check_class)
    raise IncorrectAttributeType unless value.is_a? check_class
  end

  def check_positive_value(value)
    raise IncorrectAttributeValue if value <= 0
  end
end
