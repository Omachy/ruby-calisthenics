module FunWithStrings
  def palindrome?
    s = self.downcase.gsub(/\W/i,'')
    s == s.reverse
  end
  def count_words
    count = Hash.new(0)
    word = self.downcase.gsub(/\b[a-zA-Z0-9]+/x)
    word.each { |word| count[word] += 1}
    return count
  end
  def anagram_groups
    anagram = Hash.new(0)
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
