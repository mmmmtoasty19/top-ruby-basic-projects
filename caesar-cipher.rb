def caesar_cipher(string, shift) 
  letters = string.split("")

  letters_shifted = letters.map do |letter|
    value = letter.ord

    if value.between?(65, 90)
      value += shift
      if value > 90
        value -= 26
      end
      value.chr

    elsif value.between?(97,122)
      value += shift
      if value > 122
        value -= 26
      end
      value.chr
    else
      letter
    end

  end

  puts letters_shifted.join
end


caesar_cipher("What a String!", 3)