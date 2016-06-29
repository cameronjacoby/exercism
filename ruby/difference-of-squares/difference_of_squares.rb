class Squares

	VERSION = 1

	attr_reader :count

	def initialize(count)
		@count = count
	end

	def square_of_sums
		sums ** 2
	end

	def sum_of_squares
		squares.reduce(:+)
	end

	def difference
		square_of_sums - sum_of_squares
	end

	private

		def natural_nums
			(1..count).to_a
		end

		def sums
			natural_nums.reduce(:+)
		end

		def squares
			natural_nums.map{ |num| num ** 2 }
		end

end