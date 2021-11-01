class PigLatinizer

  def piglatinize(words)
    words.split(" ").map do |word|
      consonant = /\A[^AEIOUaeiou]+/.match(word)
      remainder_word = /[AEIOUaeiou]+\w*/.match(word)
      vowel = /\A[AEIOUaeiou]+/.match(word)
      original_word = /\A\w*/.match(word)
      if consonant
        remainder_word[0] << consonant[0] << "ay"
      elsif vowel
        original_word[0] << "way"        
      end
    end.join(" ")
  end
end









# consonant = words.scan(/\A[bcdfghjklmnpqrstvwxyz]+/).join
#     vowel = words.scan(/\A[aeiou]+/).join
#     if words.include?(consonant)
#       latin_word = words.slice!(consonant)
#       latin_word = words + consonant + "ay"
#     elsif words.include?(vowel)
#       latin_word = words + "way"        
#     end