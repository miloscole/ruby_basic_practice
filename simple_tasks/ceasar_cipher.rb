def caesar_cipher(string, shift)
  alphabet = ("a".."z").to_a

  string.chars.map do |char|
    initial_index = alphabet.index(char.downcase)

    if initial_index
      shift_index = (initial_index + shift) % alphabet.length
      char.upcase == char ? alphabet[shift_index].upcase : alphabet[shift_index]
    else
      char
    end
  end.join("")
end

p caesar_cipher("What a string!", 5)
