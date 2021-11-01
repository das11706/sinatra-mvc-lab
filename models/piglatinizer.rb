class PigLatinizer
    def piglatinize(words)
      words.split(" ").map do |word|
        consonant = /\A[^AEIOUaeiou]+/.match(word)
        # consonant = word.match(/(\A[^AEIOUaeiou]+)/) -- (THIS VERSION WORKS ALSO)
        remainder_word = /[AEIOUaeiou]+\w*/.match(word)
        vowel = /\A[AEIOUaeiou]/.match(word)
        whole_word = /\A\w*/.match(word)
        if consonant
         remainder_word.values_at(0).join() + consonant.values_at(0).join() + "ay"  
        elsif vowel
         whole_word.values_at(0).join() + "way"
        end     
      end.join(" ")
    end    
  end