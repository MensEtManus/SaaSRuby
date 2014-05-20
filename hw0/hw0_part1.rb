# returns the sum of an integer array
def sum (array) 
	return 0 if array.empty?
	array.inject(:+)
end

# returns the sum of the two largest elements in an integer array
def max_2_sum (array) 
	return 0 if array.empty?
	return array[0] if array.size == 1
	array.sort!
	return array[array.size - 1] + array[array.size - 2]
end

# determines if any two distinct elements in the array of integers sum to n
def sum_to_n? (array, n)
	return false if array.empty? or array.size == 1
	return array.combination(2).any? {|a,b| a + b == n}
end


#raise 'max_2_sum([1,-2,-3,-4,-5]) != -1' unless max_2_sum([1,-2,-3,-4,-5]) == -1

=begin
	
raise 'sum([1, 2, 3]) != 6' unless sum([1, 2, 3]) == 6
	
raise 'max_2_sum([1]) != 1' unless max_2_sum([1]) == 1

raise 'max_2_sum([0, 3, 2]) != 5' unless max_2_sum([0, 3, 2]) == 5

raise 'sum_to_n([], 2) != false' unless sum_to_n?([], 2) == false

raise 'sum_to_n([1, 1, 2], 2) != false' unless sum_to_n?([1, 1, 2], 2) == true

=end
