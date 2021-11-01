class PigLatinizer
    def piglatinize(words)
      words.split(" ").map do |word|
        consonant = /\A[^AEIOUaeiou]+/.match(word)
        # consonant = word.match(/(\A[^AEIOUaeiou]+)/) -- (THIS VERSION WORKS ALSO)
        remainder_word = /[AEIOUaeiou]+\w*/.match(word)
        vowel = /\A[AEIOUaeiou]/.match(word)
        whole_word = /\A\w*/.match(word)
        if consonant
         remainder_word[0] << consonant[0] << "ay"  
        elsif vowel
         whole_word[0] << "way"
        end     
      end.join(" ")
    end    
  end