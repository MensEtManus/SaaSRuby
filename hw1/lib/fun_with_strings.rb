module FunWithStrings
  def palindrome?
    # your code here
    return false if self.empty?
    return true if self.length == 1
    return true if self.downcase.reverse.gsub(/\W/, "") == self.downcase.gsub(/\W/, "")
  end

  def count_words
    # your code here
    freq = Hash.new(0)
    self.downcase.scan(/\w+/) do |word|
      freq[word] += 1
    end
    freq
  end

  def anagram_groups
    # your code here
    return [] if self.empty?
    anagrams = self.split(" ")
    anagrams.group_by {|word| word.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
