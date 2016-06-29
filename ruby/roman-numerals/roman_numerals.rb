class Fixnum

	VERSION = 1

	ROMAN_MAP = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

	def to_roman
		remaining_num = self
		roman = ""

		ROMAN_MAP.each do |divisor, roman_char|
			if remaining_num > 0 && (remaining_num / divisor).floor > 0
				roman_char_count = remaining_num / divisor
				roman_char_count.times do
					roman += roman_char
					remaining_num -= divisor
				end
			end
		end

		roman
	end

end