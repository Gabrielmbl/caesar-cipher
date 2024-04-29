def caesar_cipher(string, factor)
  new_string = ''

  a_uppercase_code = 'A'.ord
  a_lowercase_code = 'a'.ord
  z_uppercase_code = 'Z'.ord
  z_lowercase_code = 'z'.ord

  for char in string.chars
    char_code = char.ord
    new_char_code = char.ord + factor

    # Char is outside of the a-z or A-Z boundaries
    if (char_code < a_uppercase_code || char_code > z_lowercase_code) ||
      (char_code > z_uppercase_code && char_code < a_lowercase_code)
      new_string += char

    # Char with factor shift is greater or equal to code for Z and less than code for a
    elsif new_char_code >= z_uppercase_code && new_char_code < a_lowercase_code
      difference = new_char_code - z_uppercase_code
      char_to_add = (difference + a_uppercase_code - 1).chr
      new_string += char_to_add

    # Char with factor shift is greater or equal to z
    elsif new_char_code >= z_lowercase_code
      difference = new_char_code - z_lowercase_code
      char_to_add = (difference + a_lowercase_code - 1).chr
      new_string += char_to_add

    else
      char_to_add = (char.ord + factor).chr
      new_string += char_to_add

    end
  end

  new_string
end

caesar_cipher('What a string!', 5)
