#Input: sentence string
#Output: same string with number words converted into string of digits

WORD_NUMBERS = {
  'zero' => 0, 'one' => 1, 'two' => 2,
  'three' => 3, 'four' => 4, 'five' => 5,
  'six' => 6, 'seven' => 7,
  'eight' => 8, 'nine' => 9
}

def word_to_digit(string)
  (string.split.map! do |word|
    if WORD_NUMBERS.keys.include?(word)
      WORD_NUMBERS[word]
    elsif WORD_NUMBERS.keys.include?(word[0..-2])
      digit = word[-1]
      (WORD_NUMBERS[word[0..-2]]).to_s + digit
    else
      word
    end
  end).join(' ')
end


word_to_digit('Please call me at five five five one two three four. Thanks.')
