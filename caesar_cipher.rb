def caesar_cipher(string, factor)
  new_string = ''
  factor %= 26

  string.each_char do |char|
    # Check if the character is a letter
    if char.match(/[a-z]/i) 
      base = char.match(/[a-z]/) ? 'a' : 'A'
      new_char_code = base.ord + (char.ord - base.ord + factor) % 26
      new_string += new_char_code.chr
    else
      new_string += char
    end
  end

  new_string
end



