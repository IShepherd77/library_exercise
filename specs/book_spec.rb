require("minitest/autorun")
require("minitest/rg")


require_relative("../Book")
require_relative("../Customer")

class BookTest < MiniTest::Test

  def setup
    @book_a = Book.new("Spot the Dog", "Eric Hill")
    @customer_a = Customer.new("Ian")
  end

  def test_get_book_title
    assert_equal("Spot the Dog", @book_a.title)
  end

  def test_get_book_author
    assert_equal("Eric Hill", @book_a.author)
  end

  def test_lend_to_customer()
    @book_a.lend_to_customer(@customer_a)
    assert_equal("Ian", @book_a.customer.name)
    assert_equal(Date.today + 14, @book_a.return_date)
  end

end
