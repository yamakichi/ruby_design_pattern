require './aggregate'
require './book_shelf_iterator'

class BookShelf < Aggregate
  attr_accessor :books, :last

  def initialize
    @books = []
    @last = 0
  end

  def get_book_at(index)
    @books[index]
  end

  def append_book(book)
    @books[@last] = book
    @last += 1
  end

  def get_length
    @last
  end

  def iterator
    BookShelfIterator.new(self)
  end
end
