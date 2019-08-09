require("date")

class Book

  attr_reader :title, :author, :customer, :return_date

  def initialize(title, author)
    @title = title
    @author = author
    @customer = nil
    @return_date = nil
  end

def lend_to_customer(customer)
  @customer = customer
  @return_date = Date.today + 14
end

end
