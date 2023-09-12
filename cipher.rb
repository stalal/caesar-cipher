def caesar_cipher(string, shift)
  # Takes in a string and the shift factor. 
  # Then returns a string, with each letter replaced by a letter SHIFT positions down the alphabet.
  
  characters = string.chars
  shifted_ascii_codes = [];
  shifted_string = []
  code = nil;

  characters.each do |char|

    code = char.ord

    if char.ord.between?(65,90)
      code = char.ord + shift
      code -=26 if code > 90 
    end

    if char.ord.between?(97,122)
      code = char.ord + shift
      code -=26 if code >122
    end

    shifted_ascii_codes.push(code)
  
  end
  
  shifted_ascii_codes.each do |char|
    shifted_string.push(char.chr)
  end

  p shifted_string.join
  
end

caesar_cipher("What a string!", 5)