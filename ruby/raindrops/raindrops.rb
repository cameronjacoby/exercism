require 'prime'

class Raindrops

  VERSION = 1

  DROPS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert num
    prime_factors = Prime.prime_division(num).flatten.uniq
    rain_drops = prime_factors.map{ |prime| DROPS[prime] if DROPS.keys.include?(prime) }
    rain_drops.any? ? rain_drops.join("") : num.to_s
  end

end