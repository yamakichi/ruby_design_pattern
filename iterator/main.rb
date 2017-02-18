require './aggregate'
require './book_shelf_iterator'
require './book_shelf'
require './book'
require './iterator'

class Main
  def execute
    book_shelf = BookShelf.new
    book_shelf.append_book(Book.new("Around the world in 80 days"))
    book_shelf.append_book(Book.new("Bible"))
    book_shelf.append_book(Book.new("Cinderella"))
    book_shelf.append_book(Book.new("Daddy-Long-legs"))
    it = book_shelf.iterator
    while it.has_next?
      book = it.next
      puts book.name
    end
  end
end

main = Main.new
main.execute

# Around the world in 80 days
# Bible
# Cinderella
# Daddy-Long-legs
