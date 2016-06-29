class Prime

	def nth(n)
		raise ArgumentError if n == 0
		primes = []
		current_num = 2
		while primes.count < n
			primes.push(current_num) if is_prime(current_num)
			current_num += 1
		end
		primes.last
	end

	private

		def is_prime(num)
			return false if num < 2
			(2...num).to_a.each do |n|
				return false if (num % n == 0)
			end
			true
		end

end