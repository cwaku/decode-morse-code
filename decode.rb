# frozen_string_literal: true

# Create a method to decode a Morse code character,
# takes a string parameter, and
# return the corresponding character in uppercase
def decode_char(code)
  decoder = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2',
    '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9',
    '-----' => '0', '.-.-.-' => '.', '--..--' => ',', '..--..' => '?', '.----.' => "'"
  }

  decoder[code]
end

puts decode_char('.-')

# Create a method to decode an entire word in Morse code,
# takes a string parameter, and return the string representation.
# Every character in a word will be separated by a single space
# (e.g. decode_word('-- -.--') returns 'MY').

def decode_word(code)
  code.split(' ').map { |char| decode_char(char) }.join
end

puts decode_word('-- -.--')

# Create a method to decode the entire message in Morse code,
# takes a string parameter, and return the string representation.
# Every word will be separated by 3 spaces (e.g.
#   decode('-- -.--   -. .- -- .') returns 'MY NAME')

def decode(code)
  code.split('   ').map { |word| decode_word(word) }.join(' ')
end

puts decode('-- -.--   -. .- -- .')
