def decode_car(str)
  char = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  char[str]
end

def decode_words(word)
  letters = word.split
  letter_output = ''
  letters.each do |letter|
    letter_output += decode_car(letter)
  end
  "#{letter_output} "
end

def decode_pharse(message)
  words = message.split('   ')
  words_output = ''
  words.each do |word|
    words_output += decode_words(word)
  end
  print words_output
end
decode_pharse('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
