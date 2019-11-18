class Book
  include Validation
  attr_reader :title, :author

  def initialize(title:, author:)
    @title = title
    @author = author
    validate
  end

  def to_s
    "Title: '#{title}' Author: '#{author}'"
  end

  private

  def validate
    check_type title, String
    check_type author, Author
    check_not_empty title
  end
end
