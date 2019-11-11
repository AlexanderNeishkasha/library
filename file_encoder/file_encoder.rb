class FileEncoder
  def initialize(library, filename)
    @library = library
    @filename = filename
  end

  def read
    raise AbstractMethodError
  end

  def store
    raise AbstractMethodError
  end
end
