def phaseI_first_anagram?(string1, string2)
  possible_anagrams = []
  i = 0

  while i < string1.length
    current_letter = string1[i]
    string_without_current_letter = string1[0...i] + string1[i+1..-1]
    j = 0

    while j < string_without_current_letter.length


      string_without_current_letter
      possible_anagrams << current_anagram
    end

    i += 1
  end
end
