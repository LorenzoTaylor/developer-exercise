class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

  def self.marklar(str)
    # Spliting the string into words
    words = str.split(/\b/)
    
    # Iterate over the words to replace ones that are longer than 4 char
    words.map! do |word|
      if word.length > 4
        word[0] == word[0].downcase ? 'marklar' : 'Marklar'
      else
        word
      end
    end

    return words.join
  end


  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10

  def self.even_fibonacci(nth)
    sequence = [0, 1]
  
    # Generate Fibonacci numbers up to the given nth term
    (2..nth).each do |i|
      sequence << sequence[-1] + sequence[-2]
    end
  
    # Sum even Fibonacci numbers up  nth term
    even_sum = sequence[0..nth].select { |num| num.even? }.sum
  
    return even_sum
  end
  
end
