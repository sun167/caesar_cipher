
def caesar_cypher(string, number)
  alphabet = ('a'..'z').to_a
  big_alphabet = alphabet.map{|letter| letter.upcase}
  return string.split("").map{ |letter|
    if alphabet.any?(letter)
      letter_index = alphabet.index(letter) + number 
      letter = alphabet[letter_index % alphabet.length] 
    end
    if big_alphabet.any?(letter)
      letter_index = big_alphabet.index(letter) + number
      letter = big_alphabet[letter_index % alphabet.length] 
    end
    letter
    }.join("")
end

p caesar_cypher("My name is Son and Z",1)
p caesar_cypher("Nz obnf jt Tpo boe A", -1)