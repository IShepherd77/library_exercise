class Library

  attr_reader :name

  def initialize(name)
    @name = name
    @stock = []
  end

  def add_book_to_stock(book)
    @stock << book
  end

  def stock_count
    return @stock.count
  end

  def remove_book(book)
    @stock.delete(book)
  end


end
