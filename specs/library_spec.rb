require("minitest/autorun")
require("minitest/rg")
require("pry")

require_relative("../Library")
require_relative("../Customer")
require_relative("../Book")

class LibraryTest < MiniTest::Test

  def setup
    @library_1 = Library.new("Central Library")
    @book_1 = Book.new("Lord of the Rings", "J R R Tolkein")
    @book_2 = Book.new("Pale Fire", "Nabokov")
    @customer_1 = Customer.new("Karolina Kaczmarska")
  end

  def test_get_library_name
    assert_equal("Central Library", @library_1.name)
  end

  def test_add_book_to_stock
    @library_1.add_book_to_stock(@book_1)
    assert_equal(1, @library_1.stock_count)
  end

  def test_remove_book
    @library_1.add_book_to_stock(@book_1)
    @library_1.add_book_to_stock(@book_2)
    @library_1.remove_book(@book_1)
    assert_equal(1, @library_1.stock_count)
  end



end
