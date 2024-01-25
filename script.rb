def caesar_cipher(txt, shift)
  #split the txt in characters
  splitWord = txt.split("")
  #we must iterate and transform all the characters in numbers
  res = splitWord.map do |character|
    #if the character is between a-z
    if character.match(/[a-z]/)
      character = character.ord + shift
      #here we do those condition because of the ascii code
      #because a's ascii code is 97 and z's is 122
      until character < 123
        character = (character - 122) + 96
      end
      character.chr
      #if the character is between A-Z
    elsif character.match(/[A-Z]/)
      character = character.ord + shift
      #A's is 65 and Z's is 90 
      until character < 91
        character = (character - 90) + 64
      end
        character.chr
    #if it is not, it returns the corrispective symbol or number that
    #we are not coding into ascii code, neither shifting
    else character
    end 
  end
  return res.join("")
end

p caesar_cipher("What a string!", 5) #"Bmfy f xywnsl!"
