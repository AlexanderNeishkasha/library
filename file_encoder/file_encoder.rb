class FileEncoder
  def initialize(filename)
    @filename = filename
  end

  def read
    raise AbstractMethodError
  end

  def store
    raise AbstractMethodError
  end
end
