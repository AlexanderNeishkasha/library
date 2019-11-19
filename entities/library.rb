class Library
  attr_reader :orders

  def initialize
    @authors = []
    @books = []
    @readers = []
    @orders = []
  end

  def add_entity(entity)
    storage = case entity
              when Book then @books
              when Author then @authors
              when Reader then @readers
              when Order then @orders
              else raise UnknownEntityClassError "Unknown entity class '#{entity.class}'"
              end
    storage.push(entity)
  end
end
