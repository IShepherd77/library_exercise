require("minitest/autorun")
require("minitest/rg")

require_relative("../Customer")
require_relative("../Book")

class CustomerTest < MiniTest::Test

  def setup
    Customer::reset_customer_count
    @customer_a = Customer.new("Ian")
    @customer_b = Customer.new("Vic")
    @book_a = Book.new("The Hungry Caterpillar", "By Someone")
    @book_b = Book.new("Spot goes to the seaside", "By Someone 2")
  end

  def test_get_customer_name
    assert_equal("Ian", @customer_a.name)
  end

  def test_customer_can_borrow_book
    assert_equal(0, @customer_a.customer_book_count)
    @customer_a.add_book_to_customer(@book_a)
    assert_equal(1, @customer_a.customer_book_count)
  end

  def test_remove_book_from_customer
    @customer_a.add_book_to_customer(@book_a)
    @customer_a.add_book_to_customer(@book_b)
    @customer_a.remove_book_from_customer(@book_a)
    assert_equal(1, @customer_a.customer_book_count)
    @customer_a.remove_book_from_customer(@book_b)
    assert_equal(0, @customer_a.customer_book_count)
  end

  def test_customer_id
    assert_equal(1, @customer_a.customer_id)
    assert_equal(2, @customer_b.customer_id)
  end

end
