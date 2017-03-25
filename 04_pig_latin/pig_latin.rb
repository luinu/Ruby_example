#write your code here
def translate(word)
  consonants = ["p","c","h", "l", "b", "t","r", "h", "d", "g", "d", "m", "n", "w", "s", "f"]
  vowels = ["a", "e", "i", "o", "u"]
  arr = word.split.map do |w|
    if vowels.include?(w[0])
        w + "ay"
      elsif w[0..1] == "qu"
        w[2..-1] + "quay"
      elsif w[0..2] == "thr"
        w[3..-1] + "thray"
      elsif w[0..2] == "sch"
        w[3..-1] + "schay"
      elsif w[0..2] == "squ"
        w[3..-1] + "squay"
      elsif consonants.include?(w[0]) && consonants.include?(w[1]) && consonants.include?(w[2])
        w[3..-1] + word[0..2] + "ay"
      elsif consonants.include?(w[0]) && consonants.include?(w[1])
        w[2..-1] + w[0..1] + "ay"
      elsif consonants.include?(w[0])
        w[1..-1] + w[0] + "ay"
      end
  end
  arr.join(' ')
end
