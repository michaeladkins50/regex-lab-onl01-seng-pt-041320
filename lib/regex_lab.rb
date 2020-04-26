def starts_with_a_vowel?(word)
   if word.match(/^[aeiou]|^[AEIOU]/)
    true
  else false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
 text.scan(/\b\w{5,5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
 if text.match(/\A[A-Z]\w*\./)
   true
 else false
 end
end

def valid_phone_number?(phone)
  phone_numbers = phone.split(", ")
  phone_checker = 0
  while phone_checker < phone_numbers.length
    phone_numbers.each do |number|
      if number.scan(/\d/).length == 10
        true
      else
        false
      end
      phone_checker += 1
    end
  end
end
