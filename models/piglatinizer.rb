class PigLatinizer
  @@vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
  def piglatinize(phrase)
    phrase = phrase.split(" ")
    # binding.pry
    phrase.map do |word|
      if @@vowels.include?(word[0])
        word + "way"
      elsif !@@vowels.include?(word[0]) && !@@vowels.include?(word[1]) && !@@vowels.include?(word[2])
        word[3..-1] + word[0..2] + "ay"
      elsif !@@vowels.include?(word[0]) && !@@vowels.include?(word[1])
        word[2..-1] + word[0..1] + "ay"
      elsif !@@vowels.include?(word[0])
        word[1..-1] + word[0] + "ay"
      else
        word
      end
    end.join(" ")
  end
end
