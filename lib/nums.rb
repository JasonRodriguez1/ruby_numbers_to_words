def nums(number)
   ones = {     0 => 'zero',
                1 => 'one',
                2 => 'two',
                3 => 'three',
                4 => 'four',
                5 => 'five',
                6 => 'six',
                7 => 'seven',
                8 => 'eight',
                9 => 'nine'
  }
   teens = {   10 => 'ten',
               11 => 'eleven',
               12 => 'twelve',
               13 => 'thirteen',
               14 => 'forteen',
               15 => 'fiften',
               16 => 'sixteen',
               17 => 'seventeen',
               18 => 'eighteen',
               19 => 'nineteen'
  }

  tens = {     1 => 'ten',
               2 => 'twenty',
               3 => 'thirty',
               4 => 'forty',
               5 => 'fifty',
               6 => 'sixty',
               7 => 'seventy',
               8 => 'eighty',
               9 => 'ninety'
  }
  hundos = {  1 => 'one hundred',
              2 => 'two hundred',
              3 => 'three hundred',
              4 => 'four hundred',
              5 => 'five hundred',
              6 => 'six hundred',
              7 => 'seven hundred',
              8 => 'eight hundred',
              9 => 'nine hundred'
  } 
  phrase = []
  new_number = number.to_s.split('')


  if teens.has_key?(number % 100)
    phrase << teens[number % 100] 
  elsif new_number[-1].to_i > 0
    phrase << ones[new_number[-1].to_i]
  end
  if new_number[-2].to_i > 1
    phrase << tens[new_number[-2].to_i]
  end
  if new_number[-3].to_i >= 1
   phrase << hundos[new_number[-3].to_i]
  end
  phrase.reverse.join(" ")  
end

def big_numbers(number)
  suffixes = ["", " thousand", " million", " billion", " trillion"]
  full_phrase = []

  if number == 0
    'zero'
  else
    index = 0
    while number >= 1
      full_phrase << nums(number % 1000) + suffixes[index]
      index += 1
      number = number/1000
    end
  end
  full_phrase.reverse.join(' ')
end













