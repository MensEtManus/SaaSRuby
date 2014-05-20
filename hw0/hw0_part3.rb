class BookInStock 
	attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price) 
		raise ArgumentError if isbn == "" or price <= 0;
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%.02f", @price);	
	end

end

=begin
steve_jobs = BookInStock.new('12345', 34.2);
puts steve_jobs.price_as_string	
=end


