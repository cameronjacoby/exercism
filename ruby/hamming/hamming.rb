class Hamming

  VERSION = 1

  def self.compute strand_a, strand_b
    raise ArgumentError if strand_a.length != strand_b.length
    
    nucleotides_a = strand_a.chars
    nucleotides_b = strand_b.chars
    distance = 0

    nucleotides_a.each_with_index do |nucleotide, index|
      distance += 1 if nucleotides_a[index] != nucleotides_b[index]
    end

    distance
  end

end