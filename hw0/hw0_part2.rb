def hello(name) 
	"Hello, " << name;
end


def starts_with_consonant?(s) 
	return false if s.empty?
	return false if /\W/.match(s) != nil
	return true if /^[AEIOU]/.match(s.upcase!) == nil
end

def binary_multiple_of_4?(s) 
	return true if s == "0"
	isBinary = /^[01]/.match(s) != nil
	result = isBinary and /00$/.match(s) != nil	
end


#puts(hello("Albert"));
if (starts_with_consonant?("string")) 
	puts "start with consonant"
else
	puts "not start with consonant"
end

if (binary_multiple_of_4?("100"))
	puts "binary multiple of 4"
else
	puts "not binary multiple of 4 "
end
