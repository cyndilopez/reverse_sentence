# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) because this code will iterate through the characters at most 3n times
# Space complexity: O(1) or constant - no actual new strings of the length of the input (n) are created, only a number of variables << n

def find_whitespace_index(characters)
  n = characters.length
  n.times do |i|
    if characters[i] == " "
      return i
    end
  end
  return n
end

def reverse_words(my_words)
  n = my_words.length
  i = 0
  while i <= n
    index_whitespace = find_whitespace_index(my_words[i..n]) + i
    j = index_whitespace - 1
    while i < j
      temp = my_words[j]
      temp2 = my_words[i]
      my_words[i] = temp
      my_words[j] = temp2
      j -= 1
      i += 1
    end
    i = index_whitespace + 1
  end
  return my_words
end

def reverse_string(my_string)
  n = my_string.length
  i = 0
  j = n - 1
  while i < j
    b = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = b
    i += 1
    j -= 1
  end
  return my_string
end

def reverse_sentence(my_words)
  return nil if my_words.nil?
  string_reversed = reverse_string(my_words)
  return reverse_words(string_reversed)
end
