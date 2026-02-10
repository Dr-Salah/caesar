def caesar_cipher(text, shift)
  #pseudocode for caesar cypher
  #for every letter in text
  #if the letter is a-z or A-Z, take the number of the letter and deduct the shift value
  #wrap if the result is out of range
  #add the new letter to the result
  # code starts here
  letters = text.split('')
  result = []
  letters.each do |i|
    if i.match?(/[a-z]/) 
      res = (i.ord + shift - 'a'.ord) % 26 + 'a'.ord
      result.push(res.chr)
    
    elsif i.match?(/[A-Z]/) 
      res = (i.ord + shift - 'A'.ord) % 26 + 'A'.ord
      result.push(res.chr)
    
    else
      result.push(i)
    end
  
end
puts result.join('')


end
caesar_cipher('zebra1', 1)
