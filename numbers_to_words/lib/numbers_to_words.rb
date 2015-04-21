class Fixnum
  define_method(:numbers_to_words) do

number = self.to_s().split("")

  ones = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
    6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}

tens = { 1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }

   words = tens.fetch(number.at(0).to_i) + ones.fetch(number.at(1).to_i)
    words
  end
end
