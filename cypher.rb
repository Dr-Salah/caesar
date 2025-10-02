def caesar_cipher(text, shift)
  text.chars.map do |char|
    if char.match?(/[a-zA-Z]/)
      base = char.downcase == char ? 'a'.ord : 'A'.ord
      ((char.ord - base + shift) % 26 + base).chr
    else
      char
    end
  end.join
end