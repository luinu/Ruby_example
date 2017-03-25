#write your code here
def echo argument
  "#{argument}"
end
def shout argument
  "#{argument.upcase}"
end
def repeat (to_repeat, repeater = nil)
  repeat_array = []
  if repeater == nil
    "#{to_repeat} #{to_repeat}"
  else
    repeater.times do
      repeat_array.push(to_repeat)
    end
    repeat_array.join(' ')
  end
end
def start_of_word(word, number_of_signs)
  word[0..number_of_signs-1]
end
def first_word(word)
  a_word = word.split(' ')
  a_word[0]
end
def titleize(word)
  little_words = ['a', 'an', 'the', 'and', 'over']
  word_new = word.gsub(/\w+/) do |match|
    if little_words.include?(match)
      match
    else
      match.capitalize
    end
  end
  a_word = word_new.split(' ')
  a_word[0] = first_word(word_new).capitalize
  a_word.join(' ')
end
