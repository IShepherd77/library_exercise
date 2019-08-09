class Customer

  attr_reader :name, :customer_id

  @@customer_count = 0

  def initialize(name)
    @name = name
    @books = []
    @@customer_count += 1
    @customer_id = @@customer_count
  end

  def add_book_to_customer(book)
    # @books << book
      @books.push(book)
  end

  def remove_book_from_customer(book)
    @books.delete(book)
  end

  def customer_book_count()
    return @books.count
  end

  def self.reset_customer_count()
    @@customer_count = 0
  end


end
