class Book
# write your code here
  attr_accessor :title
  def initialize
    @title = ""
  end
  def first_word(title)
    a_word = title.split(' ')
    a_word[0]
  end
  def titleize(title)
    little_words = ['a', 'an', 'the', 'and', 'over', 'in', 'of']
    word_new = title.gsub(/\w+/) do |match|
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

  def title
    titleize(@title)
  end
end
