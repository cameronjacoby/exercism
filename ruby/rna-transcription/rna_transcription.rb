class Complement

  VERSION = 2

  DNA_KEYS = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }

  RNA_KEYS = DNA_KEYS.invert

  def self.of_dna dna_strand
    convert dna_strand, DNA_KEYS
  end

  def self.of_rna rna_strand
    convert rna_strand, RNA_KEYS
  end

  private

    def self.convert strand, pairs
      strand.chars.inject("") do |complement_strand, nucleotide|
        raise ArgumentError if !pairs.keys.include?(nucleotide)
        complement_strand + pairs[nucleotide]
      end
    end

end