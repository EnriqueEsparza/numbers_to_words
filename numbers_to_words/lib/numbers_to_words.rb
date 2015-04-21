class Fixnum
  define_method(:numbers_to_words) do
      ones = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
        6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 0 => "" }

    tens = { 1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety", 0 => "" }

    teens = { 1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen", 0 => "" }

    hundreds = { 1 => "one-hundred", 2 => "two-hundred", 3 => "three-hundred", 4 => "four-hundred", 5 => "five-hundred", 6 => "six-hundred", 7 => "seven-hundred", 8 => "eight-hundred", 9 => "nine-hundred" }


    words =""
      if self <= 10

        words = ones.fetch(self)

      elsif  (self >= 10 && self <=99)
          number = self.to_s().split("")

             words = tens.fetch(number.at(0).to_i) + ones.fetch(number.at(1).to_i)

                if ((number.at(0).to_i == 1) && (number.at(1).to_i <= 9))
                      words = teens.fetch(number.at(1).to_i)
                    end



      elsif  (self >= 100 && self <= 999)
           number = self.to_s().split("")

              words = hundreds.fetch(number.at(0).to_i) + tens.fetch(number.at(1).to_i) + ones.fetch(number.at(2).to_i)

                            if ((number.at(1).to_i == 1) && (number.at(2).to_i <= 9))
                                  words = hundreds.fetch(number.at(0).to_i) + teens.fetch(number.at(2).to_i)
                            end


      else (self >= 1000 && self <= 9999)
          number = self.to_s().split("")

            words = ones.fetch(number.at(0).to_i) + "thousand" + hundreds.fetch(number.at(1).to_i) + tens.fetch(number.at(2).to_i) +ones.fetch(number.at(3).to_i)

       end

words

  end
end
