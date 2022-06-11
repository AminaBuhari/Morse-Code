def decode_char(morse_code, decrypted, morse)
  morse_code.each do |code|
    code = code.split
    decrypted.concat(code.map { |char| morse[char] }) << ' '
  end
end

def decode_word(morse_code)
  morse = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' =>
    'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' =>
    'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' =>
    'X', '-.--' => 'Y', '--..' => 'Z' }

  morse_code = morse_code.split('   ')
  decrypted = []
  decode_char(morse_code, decrypted, morse)
  decrypted.join
end

print decode_word('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
