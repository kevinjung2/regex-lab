require 'pry'
def starts_with_a_vowel?(word)
  test = word.scan(/^(\b[aeiouAEIOU]\w*\s*)/).length
  if test == 1
    return true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/(\bun\w*ing)/).flatten
end

def words_five_letters_long(text)
  text.scan(/\b[a-zA-Z]{5}\b/).flatten
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.scan(/^[A-Z].*[.!?]$/) == [] ? false : true
end

def valid_phone_number?(phone)
  phone.scan(/\(?(\d{3})[\s)-]?\d{3}[\s-]?\d{4}/) == [] ? false : true
end
