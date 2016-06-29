class Robot

	attr_accessor :name

	NAME_CONFIG = {
		letters: 2,
		digits: 3
	}

	def initialize
		@name = random_name
	end

	def reset
		self.name = random_name
	end

	private

		def random_name
			random_uppercase_letters(NAME_CONFIG[:letters]) + random_number(NAME_CONFIG[:digits]).to_s
		end

		def random_uppercase_letters(length)
			('A'..'Z').to_a.sample(length).join
		end

		def random_number(digits)
			(0..9).to_a.sample(digits).join
		end

end